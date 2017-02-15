module FHIR
  class FamilyMemberHistory < FHIR::Model
    MULTIPLE_TYPES = {
      'born' => ['Period', 'date', 'string'],
      'age' => ['Age', 'Range', 'string'],
      'deceased' => ['boolean', 'Age', 'Range', 'date', 'string']
    }
    SEARCH_PARAMS = ["code", "date", "gender", "identifier", "patient", "relationship"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'FamilyMemberHistory.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'FamilyMemberHistory.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'FamilyMemberHistory.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'FamilyMemberHistory.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'FamilyMemberHistory.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'FamilyMemberHistory.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'FamilyMemberHistory.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'FamilyMemberHistory.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'FamilyMemberHistory.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'FamilyMemberHistory.patient', 'min'=>1, 'max'=>1},
      'date' => {'type'=>'dateTime', 'path'=>'FamilyMemberHistory.date', 'min'=>0, 'max'=>1},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/history-status'=>['partial', 'completed', 'entered-in-error', 'health-unknown', 'partial', 'completed', 'entered-in-error', 'health-unknown']}, 'type'=>'code', 'path'=>'FamilyMemberHistory.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/history-status'}},
      'name' => {'type'=>'string', 'path'=>'FamilyMemberHistory.name', 'min'=>0, 'max'=>1},
      'relationship' => {'valid_codes'=>{'http://hl7.org/fhir/v3/RoleCode'=>['FAMMEMB', 'CHILD', 'CHLDADOPT', 'DAUADOPT', 'SONADOPT', 'CHLDFOST', 'DAUFOST', 'SONFOST', 'DAUC', 'DAU', 'STPDAU', 'NCHILD', 'SON', 'SONC', 'STPSON', 'STPCHLD', 'EXT', 'AUNT', 'MAUNT', 'PAUNT', 'COUSN', 'MCOUSN', 'PCOUSN', 'GGRPRN', 'GGRFTH', 'MGGRFTH', 'PGGRFTH', 'GGRMTH', 'MGGRMTH', 'PGGRMTH', 'MGGRPRN', 'PGGRPRN', 'GRNDCHILD', 'GRNDDAU', 'GRNDSON', 'GRPRN', 'GRFTH', 'MGRFTH', 'PGRFTH', 'GRMTH', 'MGRMTH', 'PGRMTH', 'MGRPRN', 'PGRPRN', 'INLAW', 'CHLDINLAW', 'DAUINLAW', 'SONINLAW', 'PRNINLAW', 'FTHINLAW', 'MTHINLAW', 'SIBINLAW', 'BROINLAW', 'SISINLAW', 'NIENEPH', 'NEPHEW', 'NIECE', 'UNCLE', 'MUNCLE', 'PUNCLE', 'PRN', 'ADOPTP', 'ADOPTF', 'ADOPTM', 'FTH', 'FTHFOST', 'NFTH', 'NFTHF', 'STPFTH', 'MTH', 'GESTM', 'MTHFOST', 'NMTH', 'NMTHF', 'STPMTH', 'NPRN', 'PRNFOST', 'STPPRN', 'SIB', 'BRO', 'HBRO', 'NBRO', 'TWINBRO', 'FTWINBRO', 'ITWINBRO', 'STPBRO', 'HSIB', 'HSIS', 'NSIB', 'NSIS', 'TWINSIS', 'FTWINSIS', 'ITWINSIS', 'TWIN', 'FTWIN', 'ITWIN', 'SIS', 'STPSIS', 'STPSIB', 'SIGOTHR', 'DOMPART', 'FMRSPS', 'SPS', 'HUSB', 'WIFE']}, 'type'=>'CodeableConcept', 'path'=>'FamilyMemberHistory.relationship', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/v3-FamilyMember'}},
      'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown', 'male', 'female', 'other', 'unknown']}, 'type'=>'code', 'path'=>'FamilyMemberHistory.gender', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
      'bornPeriod' => {'type'=>'Period', 'path'=>'FamilyMemberHistory.born[x]', 'min'=>0, 'max'=>1},
      'bornDate' => {'type'=>'date', 'path'=>'FamilyMemberHistory.born[x]', 'min'=>0, 'max'=>1},
      'bornString' => {'type'=>'string', 'path'=>'FamilyMemberHistory.born[x]', 'min'=>0, 'max'=>1},
      'ageAge' => {'type'=>'Age', 'path'=>'FamilyMemberHistory.age[x]', 'min'=>0, 'max'=>1},
      'ageRange' => {'type'=>'Range', 'path'=>'FamilyMemberHistory.age[x]', 'min'=>0, 'max'=>1},
      'ageString' => {'type'=>'string', 'path'=>'FamilyMemberHistory.age[x]', 'min'=>0, 'max'=>1},
      'estimatedAge' => {'type'=>'boolean', 'path'=>'FamilyMemberHistory.estimatedAge', 'min'=>0, 'max'=>1},
      'deceasedBoolean' => {'type'=>'boolean', 'path'=>'FamilyMemberHistory.deceased[x]', 'min'=>0, 'max'=>1},
      'deceasedAge' => {'type'=>'Age', 'path'=>'FamilyMemberHistory.deceased[x]', 'min'=>0, 'max'=>1},
      'deceasedRange' => {'type'=>'Range', 'path'=>'FamilyMemberHistory.deceased[x]', 'min'=>0, 'max'=>1},
      'deceasedDate' => {'type'=>'date', 'path'=>'FamilyMemberHistory.deceased[x]', 'min'=>0, 'max'=>1},
      'deceasedString' => {'type'=>'string', 'path'=>'FamilyMemberHistory.deceased[x]', 'min'=>0, 'max'=>1},
      'note' => {'type'=>'Annotation', 'path'=>'FamilyMemberHistory.note', 'min'=>0, 'max'=>1},
      'condition' => {'type'=>'FamilyMemberHistory::Condition', 'path'=>'FamilyMemberHistory.condition', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Condition < FHIR::Model
      MULTIPLE_TYPES = {
        'onset' => ['Age', 'Range', 'Period', 'string']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Condition.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Condition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Condition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://snomed.info/sct'=>[]}, 'type'=>'CodeableConcept', 'path'=>'Condition.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/condition-code'}},
        'outcome' => {'valid_codes'=>{'http://snomed.info/sct'=>[]}, 'type'=>'CodeableConcept', 'path'=>'Condition.outcome', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/condition-outcome'}},
        'onsetAge' => {'type'=>'Age', 'path'=>'Condition.onset[x]', 'min'=>0, 'max'=>1},
        'onsetRange' => {'type'=>'Range', 'path'=>'Condition.onset[x]', 'min'=>0, 'max'=>1},
        'onsetPeriod' => {'type'=>'Period', 'path'=>'Condition.onset[x]', 'min'=>0, 'max'=>1},
        'onsetString' => {'type'=>'string', 'path'=>'Condition.onset[x]', 'min'=>0, 'max'=>1},
        'note' => {'type'=>'Annotation', 'path'=>'Condition.note', 'min'=>0, 'max'=>1}
      }
    end
  end
end
