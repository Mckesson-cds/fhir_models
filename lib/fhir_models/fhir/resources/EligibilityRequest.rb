module FHIR
  class EligibilityRequest < FHIR::Model
    MULTIPLE_TYPES = {
      'insurer' => ['Identifier', 'Reference'],
      'provider' => ['Identifier', 'Reference'],
      'organization' => ['Identifier', 'Reference'],
      'enterer' => ['Identifier', 'Reference'],
      'facility' => ['Identifier', 'Reference'],
      'patient' => ['Identifier', 'Reference'],
      'coverage' => ['Identifier', 'Reference'],
      'serviced' => ['date', 'Period']
    }
    SEARCH_PARAMS = ["created", "facility-identifier", "facility-reference", "identifier", "organization-identifier", "organization-reference", "patient-identifier", "patient-reference", "provider-identifier", "provider-reference"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'EligibilityRequest.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'EligibilityRequest.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'EligibilityRequest.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'EligibilityRequest.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'EligibilityRequest.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'EligibilityRequest.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'EligibilityRequest.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'EligibilityRequest.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'EligibilityRequest.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/eligibilityrequest-status'=>['active', 'cancelled', 'draft', 'entered-in-error', 'active', 'cancelled', 'draft', 'entered-in-error']}, 'type'=>'code', 'path'=>'EligibilityRequest.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/eligibilityrequest-status'}},
      'ruleset' => {'valid_codes'=>{'http://hl7.org/fhir/ruleset'=>['x12-4010', 'x12-5010', 'x12-7010', 'cdanet-v2', 'cdanet-v4', 'cpha-3', 'x12-4010', 'x12-5010', 'x12-7010', 'cdanet-v2', 'cdanet-v4', 'cpha-3']}, 'type'=>'Coding', 'path'=>'EligibilityRequest.ruleset', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ruleset'}},
      'originalRuleset' => {'valid_codes'=>{'http://hl7.org/fhir/ruleset'=>['x12-4010', 'x12-5010', 'x12-7010', 'cdanet-v2', 'cdanet-v4', 'cpha-3', 'x12-4010', 'x12-5010', 'x12-7010', 'cdanet-v2', 'cdanet-v4', 'cpha-3']}, 'type'=>'Coding', 'path'=>'EligibilityRequest.originalRuleset', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ruleset'}},
      'created' => {'type'=>'dateTime', 'path'=>'EligibilityRequest.created', 'min'=>0, 'max'=>1},
      'insurerIdentifier' => {'type'=>'Identifier', 'path'=>'EligibilityRequest.insurer[x]', 'min'=>0, 'max'=>1},
      'insurerReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'EligibilityRequest.insurer[x]', 'min'=>0, 'max'=>1},
      'providerIdentifier' => {'type'=>'Identifier', 'path'=>'EligibilityRequest.provider[x]', 'min'=>0, 'max'=>1},
      'providerReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner'], 'type'=>'Reference', 'path'=>'EligibilityRequest.provider[x]', 'min'=>0, 'max'=>1},
      'organizationIdentifier' => {'type'=>'Identifier', 'path'=>'EligibilityRequest.organization[x]', 'min'=>0, 'max'=>1},
      'organizationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'EligibilityRequest.organization[x]', 'min'=>0, 'max'=>1},
      'priority' => {'valid_codes'=>{'http://hl7.org/fhir/processpriority'=>['stat', 'normal', 'deferred', 'stat', 'normal', 'deferred']}, 'type'=>'Coding', 'path'=>'EligibilityRequest.priority', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/process-priority'}},
      'entererIdentifier' => {'type'=>'Identifier', 'path'=>'EligibilityRequest.enterer[x]', 'min'=>0, 'max'=>1},
      'entererReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner'], 'type'=>'Reference', 'path'=>'EligibilityRequest.enterer[x]', 'min'=>0, 'max'=>1},
      'facilityIdentifier' => {'type'=>'Identifier', 'path'=>'EligibilityRequest.facility[x]', 'min'=>0, 'max'=>1},
      'facilityReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'EligibilityRequest.facility[x]', 'min'=>0, 'max'=>1},
      'patientIdentifier' => {'type'=>'Identifier', 'path'=>'EligibilityRequest.patient[x]', 'min'=>0, 'max'=>1},
      'patientReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'EligibilityRequest.patient[x]', 'min'=>0, 'max'=>1},
      'coverageIdentifier' => {'type'=>'Identifier', 'path'=>'EligibilityRequest.coverage[x]', 'min'=>0, 'max'=>1},
      'coverageReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage'], 'type'=>'Reference', 'path'=>'EligibilityRequest.coverage[x]', 'min'=>0, 'max'=>1},
      'businessArrangement' => {'type'=>'string', 'path'=>'EligibilityRequest.businessArrangement', 'min'=>0, 'max'=>1},
      'servicedDate' => {'type'=>'date', 'path'=>'EligibilityRequest.serviced[x]', 'min'=>0, 'max'=>1},
      'servicedPeriod' => {'type'=>'Period', 'path'=>'EligibilityRequest.serviced[x]', 'min'=>0, 'max'=>1},
      'benefitCategory' => {'valid_codes'=>{'http://hl7.org/fhir/benefit-category'=>['oral', 'vision', 'medical', 'pharmacy', 'oral', 'vision', 'medical', 'pharmacy']}, 'type'=>'Coding', 'path'=>'EligibilityRequest.benefitCategory', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-category'}},
      'benefitSubCategory' => {'valid_codes'=>{'http://hl7.org/fhir/benefit-subcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6', '1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'type'=>'Coding', 'path'=>'EligibilityRequest.benefitSubCategory', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-subcategory'}}
    }
  end
end
