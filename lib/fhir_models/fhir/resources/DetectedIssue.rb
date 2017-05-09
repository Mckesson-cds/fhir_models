module FHIR
  class DetectedIssue < FHIR::Model
    SEARCH_PARAMS = ["author", "category", "date", "identifier", "implicated", "patient"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'DetectedIssue.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'DetectedIssue.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'DetectedIssue.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'DetectedIssue.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'DetectedIssue.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'DetectedIssue.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'DetectedIssue.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'DetectedIssue.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'DetectedIssue.patient', 'min'=>0, 'max'=>1},
      'category' => {'valid_codes'=>{'http://hl7.org/fhir/v3/ActCode'=>['_AdministrationDetectedIssueCode', '_AppropriatenessDetectedIssueCode', '_InteractionDetectedIssueCode', 'FOOD', 'TPROD', 'DRG', 'NHP', 'NONRX', 'PREVINEF', 'DACT', 'TIME', 'ALRTENDLATE', 'ALRTSTRTLATE', '_TimingDetectedIssueCode', 'ENDLATE', 'STRTLATE', '_ActSuppliedItemDetectedIssueCode', '_SupplyDetectedIssueCode', 'ALLDONE', 'FULFIL', 'NOTACTN', 'NOTEQUIV', 'NOTEQUIVGEN', 'NOTEQUIVTHER', 'TIMING', 'INTERVAL', 'MINFREQ', 'HELD', 'TOOLATE', 'TOOSOON', 'HISTORIC', 'PATPREF', 'PATPREFALT']}, 'type'=>'CodeableConcept', 'path'=>'DetectedIssue.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/detectedissue-category'}},
      'severity' => {'valid_codes'=>{'http://hl7.org/fhir/detectedissue-severity'=>['high', 'moderate', 'low', 'high', 'moderate', 'low']}, 'type'=>'code', 'path'=>'DetectedIssue.severity', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/detectedissue-severity'}},
      'implicated' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'DetectedIssue.implicated', 'min'=>0, 'max'=>Float::INFINITY},
      'detail' => {'type'=>'string', 'path'=>'DetectedIssue.detail', 'min'=>0, 'max'=>1},
      'date' => {'type'=>'dateTime', 'path'=>'DetectedIssue.date', 'min'=>0, 'max'=>1},
      'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'DetectedIssue.author', 'min'=>0, 'max'=>1},
      'identifier' => {'type'=>'Identifier', 'path'=>'DetectedIssue.identifier', 'min'=>0, 'max'=>1},
      'reference' => {'type'=>'uri', 'path'=>'DetectedIssue.reference', 'min'=>0, 'max'=>1},
      'mitigation' => {'type'=>'DetectedIssue::Mitigation', 'path'=>'DetectedIssue.mitigation', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Mitigation < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Mitigation.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Mitigation.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Mitigation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'action' => {'valid_codes'=>{'http://hl7.org/fhir/v3/ActCode'=>['_ActDetectedIssueManagementCode', '_ActAdministrativeDetectedIssueManagementCode', '_AuthorizationIssueManagementCode', 'EMAUTH', '21', '1', '19', '2', '22', '23', '3', '4', '5', '6', '7', '14', '15', '16', '17', '18', '20', '8', '10', '11', '12', '13', '9']}, 'type'=>'CodeableConcept', 'path'=>'Mitigation.action', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/detectedissue-mitigation-action'}},
        'date' => {'type'=>'dateTime', 'path'=>'Mitigation.date', 'min'=>0, 'max'=>1},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner'], 'type'=>'Reference', 'path'=>'Mitigation.author', 'min'=>0, 'max'=>1}
      }
    end
  end
end
