module FHIR
  class Coverage < FHIR::Model
    MULTIPLE_TYPES = {
      'issuer' => ['Identifier', 'Reference'],
      'planholder' => ['Identifier', 'Reference'],
      'beneficiary' => ['Identifier', 'Reference']
    }
    SEARCH_PARAMS = ["beneficiary-identifier", "beneficiary-reference", "dependent", "group", "identifier", "issuer-identifier", "issuer-reference", "plan", "planholder-identifier", "planholder-reference", "sequence", "subgroup", "subplan", "type"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Coverage.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Coverage.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Coverage.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'Coverage.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Coverage.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Coverage.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Coverage.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Coverage.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/coverage-status'=>['active', 'cancelled', 'draft', 'entered-in-error', 'active', 'cancelled', 'draft', 'entered-in-error']}, 'type'=>'code', 'path'=>'Coverage.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/coverage-status'}},
      'issuerIdentifier' => {'type'=>'Identifier', 'path'=>'Coverage.issuer[x]', 'min'=>1, 'max'=>1},
      'issuerReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Coverage.issuer[x]', 'min'=>1, 'max'=>1},
      'isAgreement' => {'type'=>'boolean', 'path'=>'Coverage.isAgreement', 'min'=>0, 'max'=>1},
      'bin' => {'type'=>'string', 'path'=>'Coverage.bin', 'min'=>0, 'max'=>1},
      'period' => {'type'=>'Period', 'path'=>'Coverage.period', 'min'=>0, 'max'=>1},
      'type' => {'valid_codes'=>{'http://hl7.org/fhir/v3/ActCode'=>['_ActCoverageTypeCode', '_ActInsurancePolicyCode', 'EHCPOL', 'HSAPOL', 'AUTOPOL', 'COL', 'UNINSMOT', 'PUBLICPOL', 'DENTPRG', 'DISEASEPRG', 'CANPRG', 'ENDRENAL', 'HIVAIDS', 'MANDPOL', 'MENTPRG', 'SAFNET', 'SUBPRG', 'SUBSIDIZ', 'SUBSIDMC', 'SUBSUPP', 'WCBPOL', '_ActInsuranceTypeCode', '_ActHealthInsuranceTypeCode', 'DENTAL', 'DISEASE', 'DRUGPOL', 'HIP', 'LTC', 'MCPOL', 'POS', 'HMO', 'PPO', 'MENTPOL', 'SUBPOL', 'VISPOL', 'DIS', 'EWB', 'FLEXP', 'LIFE', 'ANNU', 'TLIFE', 'ULIFE', 'PNC', 'REI', 'SURPL', 'UMBRL', '_ActProgramTypeCode', 'CHAR', 'CRIME', 'EAP', 'GOVEMP', 'HIRISK', 'IND', 'MILITARY', 'RETIRE', 'SOCIAL', 'VET']}, 'type'=>'Coding', 'path'=>'Coverage.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/v3-ActCoverageTypeCode'}},
      'planholderIdentifier' => {'type'=>'Identifier', 'path'=>'Coverage.planholder[x]', 'min'=>1, 'max'=>1},
      'planholderReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Coverage.planholder[x]', 'min'=>1, 'max'=>1},
      'beneficiaryIdentifier' => {'type'=>'Identifier', 'path'=>'Coverage.beneficiary[x]', 'min'=>1, 'max'=>1},
      'beneficiaryReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'Coverage.beneficiary[x]', 'min'=>1, 'max'=>1},
      'relationship' => {'valid_codes'=>{'http://hl7.org/fhir/policyholder-relationship'=>['child', 'parent', 'spouse', 'common', 'other', 'self', 'child', 'parent', 'spouse', 'common', 'other', 'self']}, 'type'=>'Coding', 'path'=>'Coverage.relationship', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/policyholder-relationship'}},
      'identifier' => {'type'=>'Identifier', 'path'=>'Coverage.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'group' => {'type'=>'string', 'path'=>'Coverage.group', 'min'=>0, 'max'=>1},
      'subGroup' => {'type'=>'string', 'path'=>'Coverage.subGroup', 'min'=>0, 'max'=>1},
      'plan' => {'type'=>'string', 'path'=>'Coverage.plan', 'min'=>0, 'max'=>1},
      'subPlan' => {'type'=>'string', 'path'=>'Coverage.subPlan', 'min'=>0, 'max'=>1},
      'class' => {'local_name'=>'local_class', 'type'=>'string', 'path'=>'Coverage.class', 'min'=>0, 'max'=>1},
      'dependent' => {'type'=>'positiveInt', 'path'=>'Coverage.dependent', 'min'=>0, 'max'=>1},
      'sequence' => {'type'=>'positiveInt', 'path'=>'Coverage.sequence', 'min'=>0, 'max'=>1},
      'network' => {'type'=>'string', 'path'=>'Coverage.network', 'min'=>0, 'max'=>1},
      'contract' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Contract'], 'type'=>'Reference', 'path'=>'Coverage.contract', 'min'=>0, 'max'=>Float::INFINITY}
    }
  end
end
