module FHIR
  class SupplyDelivery < FHIR::Model
    MULTIPLE_TYPES = {
      'suppliedItem' => ['CodeableConcept', 'Reference']
    }
    SEARCH_PARAMS = ["identifier", "patient", "receiver", "status", "supplier"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'SupplyDelivery.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'SupplyDelivery.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'SupplyDelivery.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'SupplyDelivery.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'SupplyDelivery.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'SupplyDelivery.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'SupplyDelivery.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'SupplyDelivery.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'SupplyDelivery.identifier', 'min'=>0, 'max'=>1},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/supplydelivery-status'=>['in-progress', 'completed', 'abandoned', 'in-progress', 'completed', 'abandoned']}, 'type'=>'code', 'path'=>'SupplyDelivery.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/supplydelivery-status'}},
      'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'SupplyDelivery.patient', 'min'=>0, 'max'=>1},
      'type' => {'valid_codes'=>{'http://hl7.org/fhir/supply-item-type'=>['medication', 'device', 'medication', 'device']}, 'type'=>'CodeableConcept', 'path'=>'SupplyDelivery.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/supplydelivery-type'}},
      'quantity' => {'type'=>'Quantity', 'path'=>'SupplyDelivery.quantity', 'min'=>0, 'max'=>1},
      'suppliedItemCodeableConcept' => {'valid_codes'=>{'http://snomed.info/sct'=>[]}, 'type'=>'CodeableConcept', 'path'=>'SupplyDelivery.suppliedItem[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/supply-item'}},
      'suppliedItemReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'SupplyDelivery.suppliedItem[x]', 'min'=>0, 'max'=>1},
      'supplier' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner'], 'type'=>'Reference', 'path'=>'SupplyDelivery.supplier', 'min'=>0, 'max'=>1},
      'whenPrepared' => {'type'=>'Period', 'path'=>'SupplyDelivery.whenPrepared', 'min'=>0, 'max'=>1},
      'time' => {'type'=>'dateTime', 'path'=>'SupplyDelivery.time', 'min'=>0, 'max'=>1},
      'destination' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'SupplyDelivery.destination', 'min'=>0, 'max'=>1},
      'receiver' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner'], 'type'=>'Reference', 'path'=>'SupplyDelivery.receiver', 'min'=>0, 'max'=>Float::INFINITY}
    }
  end
end
