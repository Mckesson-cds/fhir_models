module FHIR
  class Device < FHIR::Model
    SEARCH_PARAMS = ["identifier", "location", "manufacturer", "model", "organization", "patient", "type", "udicarrier", "url"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Device.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Device.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Device.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'Device.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Device.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Device.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Device.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Device.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'Device.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'udiCarrier' => {'type'=>'Identifier', 'path'=>'Device.udiCarrier', 'min'=>0, 'max'=>1},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/devicestatus'=>['available', 'not-available', 'entered-in-error', 'available', 'not-available', 'entered-in-error']}, 'type'=>'code', 'path'=>'Device.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/devicestatus'}},
      'type' => {'valid_codes'=>{'http://snomed.info/sct'=>[]}, 'type'=>'CodeableConcept', 'path'=>'Device.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-kind'}},
      'lotNumber' => {'type'=>'string', 'path'=>'Device.lotNumber', 'min'=>0, 'max'=>1},
      'manufacturer' => {'type'=>'string', 'path'=>'Device.manufacturer', 'min'=>0, 'max'=>1},
      'manufactureDate' => {'type'=>'dateTime', 'path'=>'Device.manufactureDate', 'min'=>0, 'max'=>1},
      'expirationDate' => {'type'=>'dateTime', 'path'=>'Device.expirationDate', 'min'=>0, 'max'=>1},
      'model' => {'type'=>'string', 'path'=>'Device.model', 'min'=>0, 'max'=>1},
      'version' => {'type'=>'string', 'path'=>'Device.version', 'min'=>0, 'max'=>1},
      'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'Device.patient', 'min'=>0, 'max'=>1},
      'owner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Device.owner', 'min'=>0, 'max'=>1},
      'contact' => {'type'=>'ContactPoint', 'path'=>'Device.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Device.location', 'min'=>0, 'max'=>1},
      'url' => {'type'=>'uri', 'path'=>'Device.url', 'min'=>0, 'max'=>1},
      'note' => {'type'=>'Annotation', 'path'=>'Device.note', 'min'=>0, 'max'=>Float::INFINITY}
    }
  end
end
