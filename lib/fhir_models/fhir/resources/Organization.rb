module FHIR
  class Organization < FHIR::Model
    SEARCH_PARAMS = ["active", "address", "address-city", "address-country", "address-postalcode", "address-state", "address-use", "identifier", "name", "partof", "phonetic", "type"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Organization.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Organization.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Organization.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'Organization.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Organization.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Organization.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Organization.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Organization.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'Organization.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'active' => {'type'=>'boolean', 'path'=>'Organization.active', 'min'=>0, 'max'=>1},
      'type' => {'valid_codes'=>{'http://hl7.org/fhir/organization-type'=>['prov', 'dept', 'team', 'govt', 'ins', 'edu', 'reli', 'crs', 'cg', 'bus', 'other', 'prov', 'dept', 'team', 'govt', 'ins', 'edu', 'reli', 'crs', 'cg', 'bus', 'other']}, 'type'=>'CodeableConcept', 'path'=>'Organization.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/organization-type'}},
      'name' => {'type'=>'string', 'path'=>'Organization.name', 'min'=>0, 'max'=>1},
      'alias' => {'type'=>'string', 'path'=>'Organization.alias', 'min'=>0, 'max'=>Float::INFINITY},
      'telecom' => {'type'=>'ContactPoint', 'path'=>'Organization.telecom', 'min'=>0, 'max'=>Float::INFINITY},
      'address' => {'type'=>'Address', 'path'=>'Organization.address', 'min'=>0, 'max'=>Float::INFINITY},
      'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Organization.partOf', 'min'=>0, 'max'=>1},
      'contact' => {'type'=>'Organization::Contact', 'path'=>'Organization.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'type'=>'Reference', 'path'=>'Organization.endpoint', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Contact < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Contact.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Contact.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Contact.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'purpose' => {'valid_codes'=>{'http://hl7.org/fhir/contactentity-type'=>['BILL', 'ADMIN', 'HR', 'PAYOR', 'PATINF', 'PRESS', 'BILL', 'ADMIN', 'HR', 'PAYOR', 'PATINF', 'PRESS']}, 'type'=>'CodeableConcept', 'path'=>'Contact.purpose', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contactentity-type'}},
        'name' => {'type'=>'HumanName', 'path'=>'Contact.name', 'min'=>0, 'max'=>1},
        'telecom' => {'type'=>'ContactPoint', 'path'=>'Contact.telecom', 'min'=>0, 'max'=>Float::INFINITY},
        'address' => {'type'=>'Address', 'path'=>'Contact.address', 'min'=>0, 'max'=>1}
      }
    end
  end
end
