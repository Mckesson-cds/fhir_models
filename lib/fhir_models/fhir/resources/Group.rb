module FHIR
  class Group < FHIR::Model
    SEARCH_PARAMS = ["actual", "characteristic", "code", "exclude", "identifier", "member", "type", "value"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Group.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Group.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Group.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'Group.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Group.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Group.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Group.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Group.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'Group.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'type' => {'valid_codes'=>{'http://hl7.org/fhir/group-type'=>['person', 'animal', 'practitioner', 'device', 'medication', 'substance', 'person', 'animal', 'practitioner', 'device', 'medication', 'substance']}, 'type'=>'code', 'path'=>'Group.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/group-type'}},
      'actual' => {'type'=>'boolean', 'path'=>'Group.actual', 'min'=>1, 'max'=>1},
      'active' => {'type'=>'boolean', 'path'=>'Group.active', 'min'=>0, 'max'=>1},
      'code' => {'type'=>'CodeableConcept', 'path'=>'Group.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>nil}},
      'name' => {'type'=>'string', 'path'=>'Group.name', 'min'=>0, 'max'=>1},
      'quantity' => {'type'=>'unsignedInt', 'path'=>'Group.quantity', 'min'=>0, 'max'=>1},
      'characteristic' => {'type'=>'Group::Characteristic', 'path'=>'Group.characteristic', 'min'=>0, 'max'=>Float::INFINITY},
      'member' => {'type'=>'Group::Member', 'path'=>'Group.member', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Characteristic < FHIR::Model
      MULTIPLE_TYPES = {
        'value' => ['CodeableConcept', 'boolean', 'Quantity', 'Range']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Characteristic.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Characteristic.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Characteristic.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'type'=>'CodeableConcept', 'path'=>'Characteristic.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>nil}},
        'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>nil}},
        'valueBoolean' => {'type'=>'boolean', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1},
        'valueQuantity' => {'type'=>'Quantity', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1},
        'valueRange' => {'type'=>'Range', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1},
        'exclude' => {'type'=>'boolean', 'path'=>'Characteristic.exclude', 'min'=>1, 'max'=>1},
        'period' => {'type'=>'Period', 'path'=>'Characteristic.period', 'min'=>0, 'max'=>1}
      }
    end

    class Member < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Member.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Member.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Member.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'entity' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance'], 'type'=>'Reference', 'path'=>'Member.entity', 'min'=>1, 'max'=>1},
        'period' => {'type'=>'Period', 'path'=>'Member.period', 'min'=>0, 'max'=>1},
        'inactive' => {'type'=>'boolean', 'path'=>'Member.inactive', 'min'=>0, 'max'=>1}
      }
    end
  end
end
