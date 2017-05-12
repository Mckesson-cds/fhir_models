require 'pry-byebug'
require 'nokogiri'
require 'mime/types'
require 'yaml'
require 'bcp47'
require 'fhir_models/operations'

module FHIR
  class Model
    include FHIR::Operations

    attr_reader :model_data

    def self.new(*args, &block)
      resource_type = (args.first || {}).delete('resourceType')
      if self == Model && resource_type.nil?
        # raise NotImplementedError, "#{self} is an abstract class and cannot be instantiated."
      end

      subclass = FHIR.const_get(resource_type) if resource_type
      if subclass && subclass != self
        subclass.new(*args, &block)
      else
        super
      end
    end

    def initialize(data = {})
      @resource_type = data.delete('resourceType')
      @model_data = data.symbolize_keys
    end

    def to_hash
      model_data.select { |_key, value| value.present? }
    end

    # This is necessary for uniq to properly identify two FHIR models as being identical
    def hash
      model_data.hash
    end

    # allow two FHIR models to be compared for equality
    def ==(other)
      model_data == other.model_data
    end
    alias eql? ==

    def method_missing(method_name, *args)
      super unless has_attribute?(method_name)

      key = if polymorphic_attribute?(method_name)
              polymorphic_key(method_name) || method_name
            else
              method_name
            end

      data = model_data[key]

      converted_model = convert_to_fhir_model(data, key)
      model_data[key] = converted_model unless converted_model.nil?

      define_singleton_method(method_name) do
        model_data[key]
      end

      model_data[key]
    end

    def respond_to_missing?(method_name, _include_all = false)
      has_attribute?(method_name) || super
    end

    def self.from_json(json)
      new(JSON.parse(json))
    end

    def self.from_fhir(json, format: :json)
      from_json(json)
    end

    def self.resource_type
      name.split('::').last unless name == 'Model'
    end

    def as_json(_options = nil)
      to_hash
    end

    def to_json
      as_json.merge('resourceType' => resource_type).to_json
    end
    alias to_fhir_json to_json

    def to_fhir(format: :json)
      to_json
    end

    def resource_type
      @resource_type ||= self.class.resource_type
    end
    alias resourceType resource_type

    private

    def has_attribute?(name)
      model_data.key?(name) ||
        attribute_definitions.key?(name.to_s) ||
        multiple_types.key?(name.to_s)
    end

    def polymorphic_attribute?(name)
      multiple_types.key?(name.to_s)
    end

    def polymorphic_key(base_name)
      available_type = multiple_types[base_name.to_s].detect { |type| model_data.key?(:"#{base_name}#{type.upcase_first}") }
      available_type.present? ? :"#{base_name}#{available_type.upcase_first}" : nil
    end

    def multiple_types
      if self.class.const_defined?(:MULTIPLE_TYPES)
        self.class::MULTIPLE_TYPES
      else
        {}
      end
    end

    def attribute_definitions
      if self.class.const_defined?(:METADATA)
        self.class::METADATA
      else
        {}
      end
    end

    def convert_to_fhir_model(contents, attribute_name)
      if contents.nil?
        return [] if array_attribute?(attribute_name)
        return
      end

      attribute_class = class_for_attribute(attribute_name)

      if contents.is_a?(Array)
        contents.map { |content| convert_to_fhir_model(content, attribute_name) }
      elsif contents.is_a?(Hash)
        attribute_class.new(contents)
      else
        contents
      end
    end

    def class_for_attribute(name)
      return FHIR::Model unless attribute_definitions.key?(name.to_s)
      type = attribute_definitions[name.to_s]['type']
      FHIR.const_get(type) if type =~ /\A[A-Z]/
    end

    def array_attribute?(name)
      return false unless attribute_definitions.key?(name.to_s)
      attribute_definitions[name.to_s]['max'] > 1
    end
  end
end
