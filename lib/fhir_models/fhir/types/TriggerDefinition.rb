module FHIR
  class TriggerDefinition < FHIR::Model
    MULTIPLE_TYPES = {
      'eventTiming' => ['Timing', 'Reference', 'date', 'dateTime']
    }
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'TriggerDefinition.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'TriggerDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'type' => {'valid_codes'=>{'http://hl7.org/fhir/trigger-type'=>['named-event', 'periodic', 'data-added', 'data-modified', 'data-removed', 'data-accessed', 'data-access-ended', 'named-event', 'periodic', 'data-added', 'data-modified', 'data-removed', 'data-accessed', 'data-access-ended']}, 'type'=>'code', 'path'=>'TriggerDefinition.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/trigger-type'}},
      'eventName' => {'type'=>'string', 'path'=>'TriggerDefinition.eventName', 'min'=>0, 'max'=>1},
      'eventTimingTiming' => {'type'=>'Timing', 'path'=>'TriggerDefinition.eventTiming[x]', 'min'=>0, 'max'=>1},
      'eventTimingReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Schedule'], 'type'=>'Reference', 'path'=>'TriggerDefinition.eventTiming[x]', 'min'=>0, 'max'=>1},
      'eventTimingDate' => {'type'=>'date', 'path'=>'TriggerDefinition.eventTiming[x]', 'min'=>0, 'max'=>1},
      'eventTimingDateTime' => {'type'=>'dateTime', 'path'=>'TriggerDefinition.eventTiming[x]', 'min'=>0, 'max'=>1},
      'eventData' => {'type'=>'DataRequirement', 'path'=>'TriggerDefinition.eventData', 'min'=>0, 'max'=>1}
    }

  end
end
