module FHIR
  class GuidanceResponse < FHIR::Model
    MULTIPLE_TYPES = {
      'reason' => ['CodeableConcept', 'Reference']
    }
    SEARCH_PARAMS = ["patient", "subject"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'GuidanceResponse.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'GuidanceResponse.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'GuidanceResponse.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'GuidanceResponse.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'GuidanceResponse.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'GuidanceResponse.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'GuidanceResponse.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'GuidanceResponse.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'requestId' => {'type'=>'id', 'path'=>'GuidanceResponse.requestId', 'min'=>0, 'max'=>1},
      'identifier' => {'type'=>'Identifier', 'path'=>'GuidanceResponse.identifier', 'min'=>0, 'max'=>1},
      'module' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DecisionSupportServiceModule'], 'type'=>'Reference', 'path'=>'GuidanceResponse.module', 'min'=>1, 'max'=>1},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/guidance-response-status'=>['success', 'data-requested', 'data-required', 'in-progress', 'failure', 'success', 'data-requested', 'data-required', 'in-progress', 'failure']}, 'type'=>'code', 'path'=>'GuidanceResponse.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/guidance-response-status'}},
      'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'GuidanceResponse.subject', 'min'=>0, 'max'=>1},
      'context' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter', 'http://hl7.org/fhir/StructureDefinition/EpisodeOfCare'], 'type'=>'Reference', 'path'=>'GuidanceResponse.context', 'min'=>0, 'max'=>1},
      'occurrenceDateTime' => {'type'=>'dateTime', 'path'=>'GuidanceResponse.occurrenceDateTime', 'min'=>0, 'max'=>1},
      'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'GuidanceResponse.performer', 'min'=>0, 'max'=>1},
      'reasonCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'GuidanceResponse.reason[x]', 'min'=>0, 'max'=>1},
      'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'GuidanceResponse.reason[x]', 'min'=>0, 'max'=>1},
      'note' => {'type'=>'Annotation', 'path'=>'GuidanceResponse.note', 'min'=>0, 'max'=>Float::INFINITY},
      'evaluationMessage' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/OperationOutcome'], 'type'=>'Reference', 'path'=>'GuidanceResponse.evaluationMessage', 'min'=>0, 'max'=>Float::INFINITY},
      'outputParameters' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Parameters'], 'type'=>'Reference', 'path'=>'GuidanceResponse.outputParameters', 'min'=>0, 'max'=>1},
      'action' => {'type'=>'GuidanceResponse::Action', 'path'=>'GuidanceResponse.action', 'min'=>0, 'max'=>Float::INFINITY},
      'dataRequirement' => {'type'=>'DataRequirement', 'path'=>'GuidanceResponse.dataRequirement', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Action < FHIR::Model
      MULTIPLE_TYPES = {
        'timing' => ['dateTime', 'Period', 'Duration', 'Range']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Action.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Action.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Action.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'actionIdentifier' => {'type'=>'Identifier', 'path'=>'Action.actionIdentifier', 'min'=>0, 'max'=>1},
        'label' => {'type'=>'string', 'path'=>'Action.label', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'Action.title', 'min'=>0, 'max'=>1},
        'description' => {'type'=>'string', 'path'=>'Action.description', 'min'=>0, 'max'=>1},
        'textEquivalent' => {'type'=>'string', 'path'=>'Action.textEquivalent', 'min'=>0, 'max'=>1},
        'concept' => {'type'=>'CodeableConcept', 'path'=>'Action.concept', 'min'=>0, 'max'=>Float::INFINITY},
        'documentation' => {'type'=>'RelatedResource', 'path'=>'Action.documentation', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedAction' => {'type'=>'GuidanceResponse::Action::RelatedAction', 'path'=>'Action.relatedAction', 'min'=>0, 'max'=>1},
        'timingDateTime' => {'type'=>'dateTime', 'path'=>'Action.timing[x]', 'min'=>0, 'max'=>1},
        'timingPeriod' => {'type'=>'Period', 'path'=>'Action.timing[x]', 'min'=>0, 'max'=>1},
        'timingDuration' => {'type'=>'Duration', 'path'=>'Action.timing[x]', 'min'=>0, 'max'=>1},
        'timingRange' => {'type'=>'Range', 'path'=>'Action.timing[x]', 'min'=>0, 'max'=>1},
        'participant' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Person', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Action.participant', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/action-type'=>['create', 'update', 'remove', 'fire-event', 'create', 'update', 'remove', 'fire-event']}, 'type'=>'Coding', 'path'=>'Action.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/action-type'}},
        'groupingBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-grouping-behavior'=>['visual-group', 'logical-group', 'sentence-group', 'visual-group', 'logical-group', 'sentence-group']}, 'type'=>'code', 'path'=>'Action.groupingBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-grouping-behavior'}},
        'selectionBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-selection-behavior'=>['any', 'all', 'all-or-none', 'exactly-one', 'at-most-one', 'one-or-more', 'any', 'all', 'all-or-none', 'exactly-one', 'at-most-one', 'one-or-more']}, 'type'=>'code', 'path'=>'Action.selectionBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-selection-behavior'}},
        'requiredBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-required-behavior'=>['must', 'could', 'must-unless-documented', 'must', 'could', 'must-unless-documented']}, 'type'=>'code', 'path'=>'Action.requiredBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-required-behavior'}},
        'precheckBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-precheck-behavior'=>['yes', 'no', 'yes', 'no']}, 'type'=>'code', 'path'=>'Action.precheckBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-precheck-behavior'}},
        'cardinalityBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-cardinality-behavior'=>['single', 'multiple', 'single', 'multiple']}, 'type'=>'code', 'path'=>'Action.cardinalityBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-cardinality-behavior'}},
        'resource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Action.resource', 'min'=>0, 'max'=>1},
        'action' => {'type'=>'GuidanceResponse::Action', 'path'=>'Action.action', 'min'=>0, 'max'=>Float::INFINITY}
      }

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
    end
  end
end
