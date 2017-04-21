module FHIR
  class RelatedPerson < FHIR::Model
    SEARCH_PARAMS = ["active", "address", "address-city", "address-country", "address-postalcode", "address-state", "address-use", "birthdate", "email", "gender", "identifier", "name", "patient", "phone", "phonetic", "telecom"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'RelatedPerson.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'RelatedPerson.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'RelatedPerson.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'RelatedPerson.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'RelatedPerson.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'RelatedPerson.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'RelatedPerson.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'RelatedPerson.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'RelatedPerson.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'active' => {'type'=>'boolean', 'path'=>'RelatedPerson.active', 'min'=>0, 'max'=>1},
      'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'RelatedPerson.patient', 'min'=>1, 'max'=>1},
      'relationship' => {'valid_codes'=>{'http://hl7.org/fhir/v2/0131'=>['C', 'E', 'F', 'I', 'N', 'O', 'S', 'U'], 'http://hl7.org/fhir/v3/RoleCode'=>['_PersonalRelationshipRoleType', 'FAMMEMB', 'CHILD', 'CHLDADOPT', 'DAUADOPT', 'SONADOPT', 'CHLDFOST', 'DAUFOST', 'SONFOST', 'DAUC', 'DAU', 'STPDAU', 'NCHILD', 'SON', 'SONC', 'STPSON', 'STPCHLD', 'EXT', 'AUNT', 'MAUNT', 'PAUNT', 'COUSN', 'MCOUSN', 'PCOUSN', 'GGRPRN', 'GGRFTH', 'MGGRFTH', 'PGGRFTH', 'GGRMTH', 'MGGRMTH', 'PGGRMTH', 'MGGRPRN', 'PGGRPRN', 'GRNDCHILD', 'GRNDDAU', 'GRNDSON', 'GRPRN', 'GRFTH', 'MGRFTH', 'PGRFTH', 'GRMTH', 'MGRMTH', 'PGRMTH', 'MGRPRN', 'PGRPRN', 'INLAW', 'CHLDINLAW', 'DAUINLAW', 'SONINLAW', 'PRNINLAW', 'FTHINLAW', 'MTHINLAW', 'SIBINLAW', 'BROINLAW', 'SISINLAW', 'NIENEPH', 'NEPHEW', 'NIECE', 'UNCLE', 'MUNCLE', 'PUNCLE', 'PRN', 'ADOPTP', 'ADOPTF', 'ADOPTM', 'FTH', 'FTHFOST', 'NFTH', 'NFTHF', 'STPFTH', 'MTH', 'GESTM', 'MTHFOST', 'NMTH', 'NMTHF', 'STPMTH', 'NPRN', 'PRNFOST', 'STPPRN', 'SIB', 'BRO', 'HBRO', 'NBRO', 'TWINBRO', 'FTWINBRO', 'ITWINBRO', 'STPBRO', 'HSIB', 'HSIS', 'NSIB', 'NSIS', 'TWINSIS', 'FTWINSIS', 'ITWINSIS', 'TWIN', 'FTWIN', 'ITWIN', 'SIS', 'STPSIS', 'STPSIB', 'SIGOTHR', 'DOMPART', 'FMRSPS', 'SPS', 'HUSB', 'WIFE', 'FRND', 'NBOR', 'ONESELF', 'ROOM']}, 'type'=>'CodeableConcept', 'path'=>'RelatedPerson.relationship', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype'}},
      'name' => {'type'=>'HumanName', 'path'=>'RelatedPerson.name', 'min'=>0, 'max'=>Float::INFINITY},
      'telecom' => {'type'=>'ContactPoint', 'path'=>'RelatedPerson.telecom', 'min'=>0, 'max'=>Float::INFINITY},
      'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown', 'male', 'female', 'other', 'unknown']}, 'type'=>'code', 'path'=>'RelatedPerson.gender', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
      'birthDate' => {'type'=>'date', 'path'=>'RelatedPerson.birthDate', 'min'=>0, 'max'=>1},
      'address' => {'type'=>'Address', 'path'=>'RelatedPerson.address', 'min'=>0, 'max'=>Float::INFINITY},
      'photo' => {'type'=>'Attachment', 'path'=>'RelatedPerson.photo', 'min'=>0, 'max'=>Float::INFINITY},
      'period' => {'type'=>'Period', 'path'=>'RelatedPerson.period', 'min'=>0, 'max'=>1}
    }
  end
end
