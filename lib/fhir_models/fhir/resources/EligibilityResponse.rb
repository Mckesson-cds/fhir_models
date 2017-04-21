module FHIR
  class EligibilityResponse < FHIR::Model
    MULTIPLE_TYPES = {
      'request' => ['Identifier', 'Reference'],
      'organization' => ['Identifier', 'Reference'],
      'requestProvider' => ['Identifier', 'Reference'],
      'requestOrganization' => ['Identifier', 'Reference']
    }
    SEARCH_PARAMS = ["created", "disposition", "identifier", "organization-identifier", "organization-reference", "outcome", "request-identifier", "request-organization-identifier", "request-organization-reference", "request-provider-identifier", "request-provider-reference", "request-reference"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'EligibilityResponse.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'EligibilityResponse.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'EligibilityResponse.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'EligibilityResponse.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'EligibilityResponse.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'EligibilityResponse.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'EligibilityResponse.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'EligibilityResponse.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'EligibilityResponse.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/eligibilityresponse-status'=>['active', 'cancelled', 'draft', 'entered-in-error', 'active', 'cancelled', 'draft', 'entered-in-error']}, 'type'=>'code', 'path'=>'EligibilityResponse.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/eligibilityresponse-status'}},
      'requestIdentifier' => {'type'=>'Identifier', 'path'=>'EligibilityResponse.request[x]', 'min'=>0, 'max'=>1},
      'requestReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EligibilityRequest'], 'type'=>'Reference', 'path'=>'EligibilityResponse.request[x]', 'min'=>0, 'max'=>1},
      'outcome' => {'valid_codes'=>{'http://hl7.org/fhir/remittance-outcome'=>['complete', 'error', 'partial', 'complete', 'error', 'partial']}, 'type'=>'code', 'path'=>'EligibilityResponse.outcome', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/remittance-outcome'}},
      'disposition' => {'type'=>'string', 'path'=>'EligibilityResponse.disposition', 'min'=>0, 'max'=>1},
      'ruleset' => {'valid_codes'=>{'http://hl7.org/fhir/ruleset'=>['x12-4010', 'x12-5010', 'x12-7010', 'cdanet-v2', 'cdanet-v4', 'cpha-3', 'x12-4010', 'x12-5010', 'x12-7010', 'cdanet-v2', 'cdanet-v4', 'cpha-3']}, 'type'=>'Coding', 'path'=>'EligibilityResponse.ruleset', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ruleset'}},
      'originalRuleset' => {'valid_codes'=>{'http://hl7.org/fhir/ruleset'=>['x12-4010', 'x12-5010', 'x12-7010', 'cdanet-v2', 'cdanet-v4', 'cpha-3', 'x12-4010', 'x12-5010', 'x12-7010', 'cdanet-v2', 'cdanet-v4', 'cpha-3']}, 'type'=>'Coding', 'path'=>'EligibilityResponse.originalRuleset', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ruleset'}},
      'created' => {'type'=>'dateTime', 'path'=>'EligibilityResponse.created', 'min'=>0, 'max'=>1},
      'organizationIdentifier' => {'type'=>'Identifier', 'path'=>'EligibilityResponse.organization[x]', 'min'=>0, 'max'=>1},
      'organizationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'EligibilityResponse.organization[x]', 'min'=>0, 'max'=>1},
      'requestProviderIdentifier' => {'type'=>'Identifier', 'path'=>'EligibilityResponse.requestProvider[x]', 'min'=>0, 'max'=>1},
      'requestProviderReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner'], 'type'=>'Reference', 'path'=>'EligibilityResponse.requestProvider[x]', 'min'=>0, 'max'=>1},
      'requestOrganizationIdentifier' => {'type'=>'Identifier', 'path'=>'EligibilityResponse.requestOrganization[x]', 'min'=>0, 'max'=>1},
      'requestOrganizationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'EligibilityResponse.requestOrganization[x]', 'min'=>0, 'max'=>1},
      'inforce' => {'type'=>'boolean', 'path'=>'EligibilityResponse.inforce', 'min'=>0, 'max'=>1},
      'contract' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Contract'], 'type'=>'Reference', 'path'=>'EligibilityResponse.contract', 'min'=>0, 'max'=>1},
      'form' => {'valid_codes'=>{'http://hl7.org/fhir/forms-codes'=>['1', '2', '1', '2']}, 'type'=>'Coding', 'path'=>'EligibilityResponse.form', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/forms'}},
      'benefitBalance' => {'type'=>'EligibilityResponse::BenefitBalance', 'path'=>'EligibilityResponse.benefitBalance', 'min'=>0, 'max'=>Float::INFINITY},
      'error' => {'type'=>'EligibilityResponse::Error', 'path'=>'EligibilityResponse.error', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class BenefitBalance < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'BenefitBalance.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'BenefitBalance.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'BenefitBalance.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'category' => {'valid_codes'=>{'http://hl7.org/fhir/benefit-category'=>['oral', 'vision', 'medical', 'pharmacy', 'oral', 'vision', 'medical', 'pharmacy']}, 'type'=>'Coding', 'path'=>'BenefitBalance.category', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-category'}},
        'subCategory' => {'valid_codes'=>{'http://hl7.org/fhir/benefit-subcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6', '1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'type'=>'Coding', 'path'=>'BenefitBalance.subCategory', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-subcategory'}},
        'name' => {'type'=>'string', 'path'=>'BenefitBalance.name', 'min'=>0, 'max'=>1},
        'description' => {'type'=>'string', 'path'=>'BenefitBalance.description', 'min'=>0, 'max'=>1},
        'network' => {'valid_codes'=>{'http://hl7.org/fhir/benefit-network'=>['in', 'out', 'in', 'out']}, 'type'=>'Coding', 'path'=>'BenefitBalance.network', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-network'}},
        'unit' => {'valid_codes'=>{'http://hl7.org/fhir/benefit-unit'=>['individual', 'family', 'individual', 'family']}, 'type'=>'Coding', 'path'=>'BenefitBalance.unit', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-unit'}},
        'term' => {'valid_codes'=>{'http://hl7.org/fhir/benefit-term'=>['annual', 'day', 'lifetime', 'annual', 'day', 'lifetime']}, 'type'=>'Coding', 'path'=>'BenefitBalance.term', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-term'}},
        'financial' => {'type'=>'EligibilityResponse::BenefitBalance::Financial', 'path'=>'BenefitBalance.financial', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Financial < FHIR::Model
        MULTIPLE_TYPES = {
          'benefit' => ['unsignedInt', 'string', 'Money'],
          'benefitUsed' => ['unsignedInt', 'Money']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Financial.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Financial.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Financial.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/benefit-type'=>['benefit', 'deductable', 'visit', 'room', 'copay', 'copay-percent', 'copay-maximum', 'vision-exam', 'vision-glasses', 'vision-contacts', 'medical-primarycare', 'pharmacy-dispense', 'benefit', 'deductable', 'visit', 'room', 'copay', 'copay-percent', 'copay-maximum', 'vision-exam', 'vision-glasses', 'vision-contacts', 'medical-primarycare', 'pharmacy-dispense']}, 'type'=>'Coding', 'path'=>'Financial.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-type'}},
          'benefitUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'Financial.benefit[x]', 'min'=>0, 'max'=>1},
          'benefitString' => {'type'=>'string', 'path'=>'Financial.benefit[x]', 'min'=>0, 'max'=>1},
          'benefitMoney' => {'type'=>'Money', 'path'=>'Financial.benefit[x]', 'min'=>0, 'max'=>1},
          'benefitUsedUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'Financial.benefitUsed[x]', 'min'=>0, 'max'=>1},
          'benefitUsedMoney' => {'type'=>'Money', 'path'=>'Financial.benefitUsed[x]', 'min'=>0, 'max'=>1}
        }
      end
    end

    class Error < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Error.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Error.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Error.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://hl7.org/fhir/adjudication-error'=>['a001', 'a002', 'a001', 'a002']}, 'type'=>'Coding', 'path'=>'Error.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/adjudication-error'}}
      }
    end
  end
end
