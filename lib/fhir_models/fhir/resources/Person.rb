module FHIR
  class Person < FHIR::Model
    SEARCH_PARAMS = ["address", "address-city", "address-country", "address-postalcode", "address-state", "address-use", "birthdate", "email", "gender", "identifier", "link", "name", "organization", "patient", "phone", "phonetic", "practitioner", "relatedperson", "telecom"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Person.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Person.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Person.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'Person.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Person.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Person.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Person.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Person.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'Person.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'name' => {'type'=>'HumanName', 'path'=>'Person.name', 'min'=>0, 'max'=>Float::INFINITY},
      'telecom' => {'type'=>'ContactPoint', 'path'=>'Person.telecom', 'min'=>0, 'max'=>Float::INFINITY},
      'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown', 'male', 'female', 'other', 'unknown']}, 'type'=>'code', 'path'=>'Person.gender', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
      'birthDate' => {'type'=>'date', 'path'=>'Person.birthDate', 'min'=>0, 'max'=>1},
      'address' => {'type'=>'Address', 'path'=>'Person.address', 'min'=>0, 'max'=>Float::INFINITY},
      'photo' => {'type'=>'Attachment', 'path'=>'Person.photo', 'min'=>0, 'max'=>1},
      'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Person.managingOrganization', 'min'=>0, 'max'=>1},
      'active' => {'type'=>'boolean', 'path'=>'Person.active', 'min'=>0, 'max'=>1},
      'link' => {'type'=>'Person::Link', 'path'=>'Person.link', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Link < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Link.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Link.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Link.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'target' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Person'], 'type'=>'Reference', 'path'=>'Link.target', 'min'=>1, 'max'=>1},
        'assurance' => {'valid_codes'=>{'http://hl7.org/fhir/identity-assuranceLevel'=>['level1', 'level2', 'level3', 'level4', 'level1', 'level2', 'level3', 'level4']}, 'type'=>'code', 'path'=>'Link.assurance', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/identity-assuranceLevel'}}
      }
    end
  end
end
