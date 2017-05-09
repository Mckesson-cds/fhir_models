module FHIR
  class ActivityDefinition < FHIR::Model
    MULTIPLE_TYPES = {
      'timing' => ['CodeableConcept', 'Timing'],
      'product' => ['Reference', 'CodeableConcept']
    }
    SEARCH_PARAMS = ["description", "identifier", "status", "title", "topic", "version"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'ActivityDefinition.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'ActivityDefinition.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'ActivityDefinition.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'ActivityDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'ActivityDefinition.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'ActivityDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'ActivityDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'ActivityDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'url' => {'type'=>'uri', 'path'=>'ActivityDefinition.url', 'min'=>0, 'max'=>1},
      'identifier' => {'type'=>'Identifier', 'path'=>'ActivityDefinition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'version' => {'type'=>'string', 'path'=>'ActivityDefinition.version', 'min'=>0, 'max'=>1},
      'name' => {'type'=>'string', 'path'=>'ActivityDefinition.name', 'min'=>0, 'max'=>1},
      'title' => {'type'=>'string', 'path'=>'ActivityDefinition.title', 'min'=>0, 'max'=>1},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/module-metadata-status'=>['draft', 'active', 'inactive', 'draft', 'active', 'inactive']}, 'type'=>'code', 'path'=>'ActivityDefinition.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/module-metadata-status'}},
      'experimental' => {'type'=>'boolean', 'path'=>'ActivityDefinition.experimental', 'min'=>0, 'max'=>1},
      'description' => {'type'=>'string', 'path'=>'ActivityDefinition.description', 'min'=>0, 'max'=>1},
      'purpose' => {'type'=>'string', 'path'=>'ActivityDefinition.purpose', 'min'=>0, 'max'=>1},
      'usage' => {'type'=>'string', 'path'=>'ActivityDefinition.usage', 'min'=>0, 'max'=>1},
      'publicationDate' => {'type'=>'date', 'path'=>'ActivityDefinition.publicationDate', 'min'=>0, 'max'=>1},
      'lastReviewDate' => {'type'=>'date', 'path'=>'ActivityDefinition.lastReviewDate', 'min'=>0, 'max'=>1},
      'effectivePeriod' => {'type'=>'Period', 'path'=>'ActivityDefinition.effectivePeriod', 'min'=>0, 'max'=>1},
      'coverage' => {'type'=>'UsageContext', 'path'=>'ActivityDefinition.coverage', 'min'=>0, 'max'=>Float::INFINITY},
      'topic' => {'type'=>'CodeableConcept', 'path'=>'ActivityDefinition.topic', 'min'=>0, 'max'=>Float::INFINITY},
      'contributor' => {'type'=>'Contributor', 'path'=>'ActivityDefinition.contributor', 'min'=>0, 'max'=>Float::INFINITY},
      'publisher' => {'type'=>'string', 'path'=>'ActivityDefinition.publisher', 'min'=>0, 'max'=>1},
      'contact' => {'type'=>'ContactDetail', 'path'=>'ActivityDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'copyright' => {'type'=>'string', 'path'=>'ActivityDefinition.copyright', 'min'=>0, 'max'=>1},
      'relatedResource' => {'type'=>'RelatedResource', 'path'=>'ActivityDefinition.relatedResource', 'min'=>0, 'max'=>Float::INFINITY},
      'library' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Library'], 'type'=>'Reference', 'path'=>'ActivityDefinition.library', 'min'=>0, 'max'=>Float::INFINITY},
      'category' => {'valid_codes'=>{'http://hl7.org/fhir/activity-definition-category'=>['communication', 'device', 'diagnostic', 'diet', 'drug', 'encounter', 'immunization', 'observation', 'procedure', 'referral', 'supply', 'vision', 'other', 'communication', 'device', 'diagnostic', 'diet', 'drug', 'encounter', 'immunization', 'observation', 'procedure', 'referral', 'supply', 'vision', 'other']}, 'type'=>'code', 'path'=>'ActivityDefinition.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/activity-definition-category'}},
      'code' => {'type'=>'CodeableConcept', 'path'=>'ActivityDefinition.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>nil}},
      'timingCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ActivityDefinition.timing[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>nil}},
      'timingTiming' => {'type'=>'Timing', 'path'=>'ActivityDefinition.timing[x]', 'min'=>0, 'max'=>1},
      'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'ActivityDefinition.location', 'min'=>0, 'max'=>1},
      'participantType' => {'valid_codes'=>{'http://hl7.org/fhir/action-participant-type'=>['patient', 'practitioner', 'related-person', 'patient', 'practitioner', 'related-person']}, 'type'=>'code', 'path'=>'ActivityDefinition.participantType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-participant-type'}},
      'productReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance'], 'type'=>'Reference', 'path'=>'ActivityDefinition.product[x]', 'min'=>0, 'max'=>1},
      'productCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ActivityDefinition.product[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>nil}},
      'quantity' => {'type'=>'Quantity', 'path'=>'ActivityDefinition.quantity', 'min'=>0, 'max'=>1},
      'transform' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/StructureMap'], 'type'=>'Reference', 'path'=>'ActivityDefinition.transform', 'min'=>0, 'max'=>1},
      'dynamicValue' => {'type'=>'ActivityDefinition::DynamicValue', 'path'=>'ActivityDefinition.dynamicValue', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class DynamicValue < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'DynamicValue.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'DynamicValue.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'DynamicValue.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'string', 'path'=>'DynamicValue.description', 'min'=>0, 'max'=>1},
        'path' => {'type'=>'string', 'path'=>'DynamicValue.path', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'string', 'path'=>'DynamicValue.language', 'min'=>0, 'max'=>1},
        'expression' => {'type'=>'string', 'path'=>'DynamicValue.expression', 'min'=>0, 'max'=>1}
      }
    end
  end
end
