module FHIR
  class Condition < FHIR::Model
    MULTIPLE_TYPES = {
      'onset' => ['dateTime', 'Age', 'Period', 'Range', 'string'],
      'abatement' => ['dateTime', 'Age', 'boolean', 'Period', 'Range', 'string']
    }
    SEARCH_PARAMS = ["abatement-age", "abatement-boolean", "abatement-date", "abatement-info", "asserter", "body-site", "category", "clinicalstatus", "code", "context", "date-recorded", "evidence", "identifier", "onset-age", "onset-date", "onset-info", "patient", "severity", "stage", "subject"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Condition.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Condition.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Condition.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'Condition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Condition.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Condition.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Condition.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Condition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'Condition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'clinicalStatus' => {'valid_codes'=>{'http://hl7.org/fhir/condition-clinical'=>['active', 'relapse', 'remission', 'resolved', 'active', 'relapse', 'remission', 'resolved']}, 'type'=>'code', 'path'=>'Condition.clinicalStatus', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/condition-clinical'}},
      'verificationStatus' => {'valid_codes'=>{'http://hl7.org/fhir/condition-ver-status'=>['provisional', 'differential', 'confirmed', 'refuted', 'entered-in-error', 'unknown', 'provisional', 'differential', 'confirmed', 'refuted', 'entered-in-error', 'unknown']}, 'type'=>'code', 'path'=>'Condition.verificationStatus', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/condition-ver-status'}},
      'category' => {'valid_codes'=>{'http://hl7.org/fhir/condition-category'=>['complaint', 'symptom', 'finding', 'diagnosis', 'complaint', 'symptom', 'finding', 'diagnosis']}, 'type'=>'CodeableConcept', 'path'=>'Condition.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/condition-category'}},
      'severity' => {'valid_codes'=>{'http://snomed.info/sct'=>['399166001', '24484000', '6736007', '255604002']}, 'type'=>'CodeableConcept', 'path'=>'Condition.severity', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/condition-severity'}},
      'code' => {'valid_codes'=>{'http://snomed.info/sct'=>[]}, 'type'=>'CodeableConcept', 'path'=>'Condition.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/condition-code'}},
      'bodySite' => {'valid_codes'=>{'http://snomed.info/sct'=>[]}, 'type'=>'CodeableConcept', 'path'=>'Condition.bodySite', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/body-site'}},
      'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'Condition.subject', 'min'=>1, 'max'=>1},
      'context' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter', 'http://hl7.org/fhir/StructureDefinition/EpisodeOfCare'], 'type'=>'Reference', 'path'=>'Condition.context', 'min'=>0, 'max'=>1},
      'onsetDateTime' => {'type'=>'dateTime', 'path'=>'Condition.onset[x]', 'min'=>0, 'max'=>1},
      'onsetAge' => {'type'=>'Age', 'path'=>'Condition.onset[x]', 'min'=>0, 'max'=>1},
      'onsetPeriod' => {'type'=>'Period', 'path'=>'Condition.onset[x]', 'min'=>0, 'max'=>1},
      'onsetRange' => {'type'=>'Range', 'path'=>'Condition.onset[x]', 'min'=>0, 'max'=>1},
      'onsetString' => {'type'=>'string', 'path'=>'Condition.onset[x]', 'min'=>0, 'max'=>1},
      'abatementDateTime' => {'type'=>'dateTime', 'path'=>'Condition.abatement[x]', 'min'=>0, 'max'=>1},
      'abatementAge' => {'type'=>'Age', 'path'=>'Condition.abatement[x]', 'min'=>0, 'max'=>1},
      'abatementBoolean' => {'type'=>'boolean', 'path'=>'Condition.abatement[x]', 'min'=>0, 'max'=>1},
      'abatementPeriod' => {'type'=>'Period', 'path'=>'Condition.abatement[x]', 'min'=>0, 'max'=>1},
      'abatementRange' => {'type'=>'Range', 'path'=>'Condition.abatement[x]', 'min'=>0, 'max'=>1},
      'abatementString' => {'type'=>'string', 'path'=>'Condition.abatement[x]', 'min'=>0, 'max'=>1},
      'dateRecorded' => {'type'=>'date', 'path'=>'Condition.dateRecorded', 'min'=>0, 'max'=>1},
      'asserter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'Condition.asserter', 'min'=>0, 'max'=>1},
      'stage' => {'type'=>'Condition::Stage', 'path'=>'Condition.stage', 'min'=>0, 'max'=>1},
      'evidence' => {'type'=>'Condition::Evidence', 'path'=>'Condition.evidence', 'min'=>0, 'max'=>Float::INFINITY},
      'note' => {'type'=>'Annotation', 'path'=>'Condition.note', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Stage < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Stage.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Stage.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Stage.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'summary' => {'valid_codes'=>{'http://snomed.info/sct'=>[]}, 'type'=>'CodeableConcept', 'path'=>'Stage.summary', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/condition-stage'}},
        'assessment' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ClinicalImpression', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport', 'http://hl7.org/fhir/StructureDefinition/Observation'], 'type'=>'Reference', 'path'=>'Stage.assessment', 'min'=>0, 'max'=>Float::INFINITY}
      }
    end

    class Evidence < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Evidence.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Evidence.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Evidence.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://snomed.info/sct'=>[]}, 'type'=>'CodeableConcept', 'path'=>'Evidence.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/manifestation-or-symptom'}},
        'detail' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Evidence.detail', 'min'=>0, 'max'=>Float::INFINITY}
      }
    end
  end
end
