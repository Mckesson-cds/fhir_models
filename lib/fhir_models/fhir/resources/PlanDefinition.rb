module FHIR
  class PlanDefinition < FHIR::Model
    SEARCH_PARAMS = ["description", "identifier", "status", "title", "topic", "version"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'PlanDefinition.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'PlanDefinition.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'PlanDefinition.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'PlanDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'PlanDefinition.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'PlanDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'PlanDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'PlanDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'url' => {'type'=>'uri', 'path'=>'PlanDefinition.url', 'min'=>0, 'max'=>1},
      'identifier' => {'type'=>'Identifier', 'path'=>'PlanDefinition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'version' => {'type'=>'string', 'path'=>'PlanDefinition.version', 'min'=>0, 'max'=>1},
      'name' => {'type'=>'string', 'path'=>'PlanDefinition.name', 'min'=>0, 'max'=>1},
      'title' => {'type'=>'string', 'path'=>'PlanDefinition.title', 'min'=>0, 'max'=>1},
      'type' => {'valid_codes'=>{'http://hl7.org/fhir/plan-definition-type'=>['order-set', 'protocol', 'eca-rule', 'order-set', 'protocol', 'eca-rule']}, 'type'=>'CodeableConcept', 'path'=>'PlanDefinition.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/plan-definition-type'}},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/module-metadata-status'=>['draft', 'active', 'inactive', 'draft', 'active', 'inactive']}, 'type'=>'code', 'path'=>'PlanDefinition.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/module-metadata-status'}},
      'experimental' => {'type'=>'boolean', 'path'=>'PlanDefinition.experimental', 'min'=>0, 'max'=>1},
      'description' => {'type'=>'string', 'path'=>'PlanDefinition.description', 'min'=>0, 'max'=>1},
      'purpose' => {'type'=>'string', 'path'=>'PlanDefinition.purpose', 'min'=>0, 'max'=>1},
      'usage' => {'type'=>'string', 'path'=>'PlanDefinition.usage', 'min'=>0, 'max'=>1},
      'publicationDate' => {'type'=>'date', 'path'=>'PlanDefinition.publicationDate', 'min'=>0, 'max'=>1},
      'lastReviewDate' => {'type'=>'date', 'path'=>'PlanDefinition.lastReviewDate', 'min'=>0, 'max'=>1},
      'effectivePeriod' => {'type'=>'Period', 'path'=>'PlanDefinition.effectivePeriod', 'min'=>0, 'max'=>1},
      'coverage' => {'type'=>'UsageContext', 'path'=>'PlanDefinition.coverage', 'min'=>0, 'max'=>Float::INFINITY},
      'topic' => {'type'=>'CodeableConcept', 'path'=>'PlanDefinition.topic', 'min'=>0, 'max'=>Float::INFINITY},
      'contributor' => {'type'=>'Contributor', 'path'=>'PlanDefinition.contributor', 'min'=>0, 'max'=>Float::INFINITY},
      'publisher' => {'type'=>'string', 'path'=>'PlanDefinition.publisher', 'min'=>0, 'max'=>1},
      'contact' => {'type'=>'ContactDetail', 'path'=>'PlanDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'copyright' => {'type'=>'string', 'path'=>'PlanDefinition.copyright', 'min'=>0, 'max'=>1},
      'relatedResource' => {'type'=>'RelatedResource', 'path'=>'PlanDefinition.relatedResource', 'min'=>0, 'max'=>Float::INFINITY},
      'library' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Library'], 'type'=>'Reference', 'path'=>'PlanDefinition.library', 'min'=>0, 'max'=>Float::INFINITY},
      'actionDefinition' => {'type'=>'PlanDefinition::ActionDefinition', 'path'=>'PlanDefinition.actionDefinition', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class ActionDefinition < FHIR::Model
      MULTIPLE_TYPES = {
        'timing' => ['dateTime', 'Period', 'Duration', 'Range', 'Timing']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'ActionDefinition.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'ActionDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ActionDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'actionIdentifier' => {'type'=>'Identifier', 'path'=>'ActionDefinition.actionIdentifier', 'min'=>0, 'max'=>1},
        'label' => {'type'=>'string', 'path'=>'ActionDefinition.label', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'ActionDefinition.title', 'min'=>0, 'max'=>1},
        'description' => {'type'=>'string', 'path'=>'ActionDefinition.description', 'min'=>0, 'max'=>1},
        'textEquivalent' => {'type'=>'string', 'path'=>'ActionDefinition.textEquivalent', 'min'=>0, 'max'=>1},
        'concept' => {'type'=>'CodeableConcept', 'path'=>'ActionDefinition.concept', 'min'=>0, 'max'=>Float::INFINITY},
        'documentation' => {'type'=>'RelatedResource', 'path'=>'ActionDefinition.documentation', 'min'=>0, 'max'=>Float::INFINITY},
        'triggerDefinition' => {'type'=>'TriggerDefinition', 'path'=>'ActionDefinition.triggerDefinition', 'min'=>0, 'max'=>Float::INFINITY},
        'condition' => {'type'=>'PlanDefinition::ActionDefinition::Condition', 'path'=>'ActionDefinition.condition', 'min'=>0, 'max'=>1},
        'relatedAction' => {'type'=>'PlanDefinition::ActionDefinition::RelatedAction', 'path'=>'ActionDefinition.relatedAction', 'min'=>0, 'max'=>Float::INFINITY},
        'timingDateTime' => {'type'=>'dateTime', 'path'=>'ActionDefinition.timing[x]', 'min'=>0, 'max'=>1},
        'timingPeriod' => {'type'=>'Period', 'path'=>'ActionDefinition.timing[x]', 'min'=>0, 'max'=>1},
        'timingDuration' => {'type'=>'Duration', 'path'=>'ActionDefinition.timing[x]', 'min'=>0, 'max'=>1},
        'timingRange' => {'type'=>'Range', 'path'=>'ActionDefinition.timing[x]', 'min'=>0, 'max'=>1},
        'timingTiming' => {'type'=>'Timing', 'path'=>'ActionDefinition.timing[x]', 'min'=>0, 'max'=>1},
        'participantType' => {'valid_codes'=>{'http://hl7.org/fhir/action-participant-type'=>['patient', 'practitioner', 'related-person', 'patient', 'practitioner', 'related-person']}, 'type'=>'code', 'path'=>'ActionDefinition.participantType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-participant-type'}},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/action-type'=>['create', 'update', 'remove', 'fire-event', 'create', 'update', 'remove', 'fire-event']}, 'type'=>'Coding', 'path'=>'ActionDefinition.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-type'}},
        'groupingBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-grouping-behavior'=>['visual-group', 'logical-group', 'sentence-group', 'visual-group', 'logical-group', 'sentence-group']}, 'type'=>'code', 'path'=>'ActionDefinition.groupingBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-grouping-behavior'}},
        'selectionBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-selection-behavior'=>['any', 'all', 'all-or-none', 'exactly-one', 'at-most-one', 'one-or-more', 'any', 'all', 'all-or-none', 'exactly-one', 'at-most-one', 'one-or-more']}, 'type'=>'code', 'path'=>'ActionDefinition.selectionBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-selection-behavior'}},
        'requiredBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-required-behavior'=>['must', 'could', 'must-unless-documented', 'must', 'could', 'must-unless-documented']}, 'type'=>'code', 'path'=>'ActionDefinition.requiredBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-required-behavior'}},
        'precheckBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-precheck-behavior'=>['yes', 'no', 'yes', 'no']}, 'type'=>'code', 'path'=>'ActionDefinition.precheckBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-precheck-behavior'}},
        'cardinalityBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-cardinality-behavior'=>['single', 'multiple', 'single', 'multiple']}, 'type'=>'code', 'path'=>'ActionDefinition.cardinalityBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-cardinality-behavior'}},
        'activityDefinition' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ActivityDefinition'], 'type'=>'Reference', 'path'=>'ActionDefinition.activityDefinition', 'min'=>0, 'max'=>1},
        'transform' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/StructureMap'], 'type'=>'Reference', 'path'=>'ActionDefinition.transform', 'min'=>0, 'max'=>1},
        'dynamicValue' => {'type'=>'PlanDefinition::ActionDefinition::DynamicValue', 'path'=>'ActionDefinition.dynamicValue', 'min'=>0, 'max'=>Float::INFINITY},
        'actionDefinition' => {'type'=>'PlanDefinition::ActionDefinition', 'path'=>'ActionDefinition.actionDefinition', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Condition < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Condition.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Condition.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Condition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'Condition.description', 'min'=>0, 'max'=>1},
          'language' => {'type'=>'string', 'path'=>'Condition.language', 'min'=>0, 'max'=>1},
          'expression' => {'type'=>'string', 'path'=>'Condition.expression', 'min'=>0, 'max'=>1}
        }
      end

      class RelatedAction < FHIR::Model
        MULTIPLE_TYPES = {
          'offset' => ['Duration', 'Range']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'RelatedAction.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'RelatedAction.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'RelatedAction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'actionIdentifier' => {'type'=>'Identifier', 'path'=>'RelatedAction.actionIdentifier', 'min'=>1, 'max'=>1},
          'relationship' => {'valid_codes'=>{'http://hl7.org/fhir/action-relationship-type'=>['before', 'after', 'concurrent', 'before', 'after', 'concurrent']}, 'type'=>'code', 'path'=>'RelatedAction.relationship', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-relationship-type'}},
          'offsetDuration' => {'type'=>'Duration', 'path'=>'RelatedAction.offset[x]', 'min'=>0, 'max'=>1},
          'offsetRange' => {'type'=>'Range', 'path'=>'RelatedAction.offset[x]', 'min'=>0, 'max'=>1},
          'anchor' => {'valid_codes'=>{'http://hl7.org/fhir/action-relationship-anchor'=>['start', 'end', 'start', 'end']}, 'type'=>'code', 'path'=>'RelatedAction.anchor', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-relationship-anchor'}}
        }
      end

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
end
