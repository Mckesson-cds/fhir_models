require 'pry-byebug'
require 'nokogiri'
require 'mime/types'
require 'yaml'
require 'bcp47'

module FHIR
  class Model < OpenStruct
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
    rescue => e
      puts e
      # TODO: This is probably not what we want. For now, it's good enough. It
      # handles the case where a resourceType got deprecated and removed.
      # super
      if resource_type
        subclass = FHIR.const_set(resource_type, Class.new(Model))
        subclass.new(*args, &block)
      else
        super
      end
    end

    def self.from_fhir(json, format: :json)
      public_send("from_#{format}", json)
    end

    def self.from_json(json)
      # JSON.parse(json, object_class: Model)
      # { resourceType: 'FHIR::Patient' }
      # binding.pry
      # new(JSON.parse(json))
      JSON.recurse_proc(JSON.parse(json), &builder_proc)
    end

    def self.builder_proc
      proc { |obj| Model.new(obj) if obj.is_a? Hash }
    end

    def to_fhir(format: :json)
      public_send("to_fhir_#{format}")
    end

    def as_json(*args)
      to_h.as_json(*args)
    end

    def to_fhir_json(*args)
      to_h.tap do |json|
        json.merge!(resourceType: resource_type) unless resource_type == 'Model'
      end.to_json(*args)
    end
    alias to_json to_fhir_json

    def resource_type
      self.class.resource_type
    end
    alias resourceType resource_type

    def self.resource_type
      name.split('::').last unless name == 'Model'
    end

    # FIXME: Hacks to get it working.
    def activity
      super || [FHIR::Model.new]
    end

    def actionResulting
      super || []
    end

    def reference
      super || FHIR::Model.new(reference: '')
    end
  end
end

# FIXME: Remove these. They're old model support and need to be elsewhere.
FHIR::MedicationOrder = Class.new(FHIR::Model)
FHIR::Conformance = Class.new(FHIR::Model)
