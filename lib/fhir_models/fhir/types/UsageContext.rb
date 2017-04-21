module FHIR
  class UsageContext < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'UsageContext.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'UsageContext.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'patientGender' => {'valid_codes'=>{'http://hl7.org/fhir/v3/AdministrativeGender'=>['F', 'M', 'UN']}, 'type'=>'CodeableConcept', 'path'=>'UsageContext.patientGender', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/v3-AdministrativeGender'}},
      'patientAgeGroup' => {'type'=>'CodeableConcept', 'path'=>'UsageContext.patientAgeGroup', 'min'=>0, 'max'=>Float::INFINITY},
      'clinicalFocus' => {'type'=>'CodeableConcept', 'path'=>'UsageContext.clinicalFocus', 'min'=>0, 'max'=>Float::INFINITY},
      'targetUser' => {'type'=>'CodeableConcept', 'path'=>'UsageContext.targetUser', 'min'=>0, 'max'=>Float::INFINITY},
      'workflowSetting' => {'type'=>'CodeableConcept', 'path'=>'UsageContext.workflowSetting', 'min'=>0, 'max'=>Float::INFINITY},
      'workflowTask' => {'type'=>'CodeableConcept', 'path'=>'UsageContext.workflowTask', 'min'=>0, 'max'=>Float::INFINITY},
      'clinicalVenue' => {'valid_codes'=>{'http://hl7.org/fhir/v3/ActCode'=>['AMB', 'EMER', 'FLD', 'HH', 'IMP', 'ACUTE', 'NONAC', 'PRENC', 'SS', 'VR']}, 'type'=>'CodeableConcept', 'path'=>'UsageContext.clinicalVenue', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/v3-ActEncounterCode'}},
      'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'UsageContext.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY}
    }

  end
end
