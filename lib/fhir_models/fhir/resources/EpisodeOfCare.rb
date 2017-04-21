module FHIR
  class EpisodeOfCare < FHIR::Model
    SEARCH_PARAMS = ["care-manager", "condition", "date", "identifier", "incomingreferral", "organization", "patient", "status", "type"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'EpisodeOfCare.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'EpisodeOfCare.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'EpisodeOfCare.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'EpisodeOfCare.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'EpisodeOfCare.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'EpisodeOfCare.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'EpisodeOfCare.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'EpisodeOfCare.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'EpisodeOfCare.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/episode-of-care-status'=>['planned', 'waitlist', 'active', 'onhold', 'finished', 'cancelled', 'entered-in-error', 'planned', 'waitlist', 'active', 'onhold', 'finished', 'cancelled', 'entered-in-error']}, 'type'=>'code', 'path'=>'EpisodeOfCare.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/episode-of-care-status'}},
      'statusHistory' => {'type'=>'EpisodeOfCare::StatusHistory', 'path'=>'EpisodeOfCare.statusHistory', 'min'=>0, 'max'=>Float::INFINITY},
      'type' => {'type'=>'CodeableConcept', 'path'=>'EpisodeOfCare.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>nil}},
      'condition' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.condition', 'min'=>0, 'max'=>Float::INFINITY},
      'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.patient', 'min'=>1, 'max'=>1},
      'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.managingOrganization', 'min'=>0, 'max'=>1},
      'period' => {'type'=>'Period', 'path'=>'EpisodeOfCare.period', 'min'=>0, 'max'=>1},
      'referralRequest' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ReferralRequest'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.referralRequest', 'min'=>0, 'max'=>Float::INFINITY},
      'careManager' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.careManager', 'min'=>0, 'max'=>1},
      'team' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.team', 'min'=>0, 'max'=>Float::INFINITY},
      'account' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Account'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.account', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class StatusHistory < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'StatusHistory.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'StatusHistory.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'StatusHistory.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/episode-of-care-status'=>['planned', 'waitlist', 'active', 'onhold', 'finished', 'cancelled', 'entered-in-error', 'planned', 'waitlist', 'active', 'onhold', 'finished', 'cancelled', 'entered-in-error']}, 'type'=>'code', 'path'=>'StatusHistory.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/episode-of-care-status'}},
        'period' => {'type'=>'Period', 'path'=>'StatusHistory.period', 'min'=>1, 'max'=>1}
      }
    end
  end
end
