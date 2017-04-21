module FHIR
  class Identifier < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Identifier.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Identifier.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'use' => {'valid_codes'=>{'http://hl7.org/fhir/identifier-use'=>['usual', 'official', 'temp', 'secondary', 'usual', 'official', 'temp', 'secondary']}, 'type'=>'code', 'path'=>'Identifier.use', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/identifier-use'}},
      'type' => {'valid_codes'=>{'http://hl7.org/fhir/v2/0203'=>['DL', 'PPN', 'BRN', 'MR', 'MCN', 'EN', 'TAX', 'NIIP', 'PRN', 'MD', 'DR'], 'http://hl7.org/fhir/identifier-type'=>['UDI', 'SNO', 'SB', 'PLAC', 'FILL', 'UDI', 'SNO', 'SB', 'PLAC', 'FILL']}, 'type'=>'CodeableConcept', 'path'=>'Identifier.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/identifier-type'}},
      'system' => {'type'=>'uri', 'path'=>'Identifier.system', 'min'=>0, 'max'=>1},
      'value' => {'type'=>'string', 'path'=>'Identifier.value', 'min'=>0, 'max'=>1},
      'period' => {'type'=>'Period', 'path'=>'Identifier.period', 'min'=>0, 'max'=>1},
      'assigner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Identifier.assigner', 'min'=>0, 'max'=>1}
    }

  end
end
