require 'pry-byebug'
require 'nokogiri'
require 'mime/types'
require 'yaml'
require 'bcp47'
require 'active_support/all'

module FHIR
  class Model
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

    def method_missing(method_name, *args)
      super unless model_data.key?(method_name)

      model_data[method_name] = convert_to_fhir_model(model_data[method_name])

      define_singleton_method(method_name) do
        model_data[method_name]
      end

      model_data[method_name]
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

    def as_json
      model_data
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

    def ==(other)
      model_data == other.model_data
    end

    private

    def convert_to_fhir_model(data)
      if data.is_a?(Array)
        data.map { |datum| convert_to_fhir_model(datum) }
      elsif data.is_a?(Hash)
        FHIR::Model.new(data)
      else
        data
      end
    end

  end
end

# FIXME: Remove these. They're old model support and need to be elsewhere.
FHIR::MedicationOrder = Class.new(FHIR::Model)
FHIR::Conformance = Class.new(FHIR::Model)
