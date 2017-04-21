module FHIR
  class DeviceUseStatement < FHIR::Model
    MULTIPLE_TYPES = {
      'bodySite' => ['CodeableConcept', 'Reference'],
      'timing' => ['Timing', 'Period', 'dateTime']
    }
    SEARCH_PARAMS = ["device", "patient", "subject"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'DeviceUseStatement.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'DeviceUseStatement.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'DeviceUseStatement.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'DeviceUseStatement.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'DeviceUseStatement.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'DeviceUseStatement.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'DeviceUseStatement.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'DeviceUseStatement.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'bodySiteCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'DeviceUseStatement.bodySite[x]', 'min'=>0, 'max'=>1},
      'bodySiteReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/BodySite'], 'type'=>'Reference', 'path'=>'DeviceUseStatement.bodySite[x]', 'min'=>0, 'max'=>1},
      'whenUsed' => {'type'=>'Period', 'path'=>'DeviceUseStatement.whenUsed', 'min'=>0, 'max'=>1},
      'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'DeviceUseStatement.device', 'min'=>1, 'max'=>1},
      'identifier' => {'type'=>'Identifier', 'path'=>'DeviceUseStatement.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'indication' => {'type'=>'CodeableConcept', 'path'=>'DeviceUseStatement.indication', 'min'=>0, 'max'=>Float::INFINITY},
      'notes' => {'type'=>'string', 'path'=>'DeviceUseStatement.notes', 'min'=>0, 'max'=>Float::INFINITY},
      'recordedOn' => {'type'=>'dateTime', 'path'=>'DeviceUseStatement.recordedOn', 'min'=>0, 'max'=>1},
      'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'DeviceUseStatement.subject', 'min'=>1, 'max'=>1},
      'timingTiming' => {'type'=>'Timing', 'path'=>'DeviceUseStatement.timing[x]', 'min'=>0, 'max'=>1},
      'timingPeriod' => {'type'=>'Period', 'path'=>'DeviceUseStatement.timing[x]', 'min'=>0, 'max'=>1},
      'timingDateTime' => {'type'=>'dateTime', 'path'=>'DeviceUseStatement.timing[x]', 'min'=>0, 'max'=>1}
    }
  end
end
