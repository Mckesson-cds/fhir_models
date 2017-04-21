module FHIR
  class DecisionSupportServiceModule < FHIR::Model
    SEARCH_PARAMS = ["description", "identifier", "status", "title", "topic", "version"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'DecisionSupportServiceModule.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'DecisionSupportServiceModule.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'DecisionSupportServiceModule.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'DecisionSupportServiceModule.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'DecisionSupportServiceModule.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'DecisionSupportServiceModule.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'DecisionSupportServiceModule.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'DecisionSupportServiceModule.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'url' => {'type'=>'uri', 'path'=>'DecisionSupportServiceModule.url', 'min'=>0, 'max'=>1},
      'identifier' => {'type'=>'Identifier', 'path'=>'DecisionSupportServiceModule.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'version' => {'type'=>'string', 'path'=>'DecisionSupportServiceModule.version', 'min'=>0, 'max'=>1},
      'name' => {'type'=>'string', 'path'=>'DecisionSupportServiceModule.name', 'min'=>0, 'max'=>1},
      'title' => {'type'=>'string', 'path'=>'DecisionSupportServiceModule.title', 'min'=>0, 'max'=>1},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/module-metadata-status'=>['draft', 'active', 'inactive', 'draft', 'active', 'inactive']}, 'type'=>'code', 'path'=>'DecisionSupportServiceModule.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/module-metadata-status'}},
      'experimental' => {'type'=>'boolean', 'path'=>'DecisionSupportServiceModule.experimental', 'min'=>0, 'max'=>1},
      'description' => {'type'=>'string', 'path'=>'DecisionSupportServiceModule.description', 'min'=>0, 'max'=>1},
      'purpose' => {'type'=>'string', 'path'=>'DecisionSupportServiceModule.purpose', 'min'=>0, 'max'=>1},
      'usage' => {'type'=>'string', 'path'=>'DecisionSupportServiceModule.usage', 'min'=>0, 'max'=>1},
      'publicationDate' => {'type'=>'date', 'path'=>'DecisionSupportServiceModule.publicationDate', 'min'=>0, 'max'=>1},
      'lastReviewDate' => {'type'=>'date', 'path'=>'DecisionSupportServiceModule.lastReviewDate', 'min'=>0, 'max'=>1},
      'effectivePeriod' => {'type'=>'Period', 'path'=>'DecisionSupportServiceModule.effectivePeriod', 'min'=>0, 'max'=>1},
      'coverage' => {'type'=>'UsageContext', 'path'=>'DecisionSupportServiceModule.coverage', 'min'=>0, 'max'=>Float::INFINITY},
      'topic' => {'type'=>'CodeableConcept', 'path'=>'DecisionSupportServiceModule.topic', 'min'=>0, 'max'=>Float::INFINITY},
      'contributor' => {'type'=>'Contributor', 'path'=>'DecisionSupportServiceModule.contributor', 'min'=>0, 'max'=>Float::INFINITY},
      'publisher' => {'type'=>'string', 'path'=>'DecisionSupportServiceModule.publisher', 'min'=>0, 'max'=>1},
      'contact' => {'type'=>'ContactDetail', 'path'=>'DecisionSupportServiceModule.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'copyright' => {'type'=>'string', 'path'=>'DecisionSupportServiceModule.copyright', 'min'=>0, 'max'=>1},
      'relatedResource' => {'type'=>'RelatedResource', 'path'=>'DecisionSupportServiceModule.relatedResource', 'min'=>0, 'max'=>Float::INFINITY},
      'trigger' => {'type'=>'TriggerDefinition', 'path'=>'DecisionSupportServiceModule.trigger', 'min'=>0, 'max'=>Float::INFINITY},
      'parameter' => {'type'=>'ParameterDefinition', 'path'=>'DecisionSupportServiceModule.parameter', 'min'=>0, 'max'=>Float::INFINITY},
      'dataRequirement' => {'type'=>'DataRequirement', 'path'=>'DecisionSupportServiceModule.dataRequirement', 'min'=>0, 'max'=>Float::INFINITY}
    }
  end
end
