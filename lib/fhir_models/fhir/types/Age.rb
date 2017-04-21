module FHIR
  class Age < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Age.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Age.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'value' => {'type'=>'decimal', 'path'=>'Age.value', 'min'=>0, 'max'=>1},
      'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/quantity-comparator'=>['<', '<=', '>=', '>', '<', '<=', '>=', '>']}, 'type'=>'code', 'path'=>'Age.comparator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/quantity-comparator'}},
      'unit' => {'type'=>'string', 'path'=>'Age.unit', 'min'=>0, 'max'=>1},
      'system' => {'type'=>'uri', 'path'=>'Age.system', 'min'=>0, 'max'=>1},
      'code' => {'type'=>'code', 'path'=>'Age.code', 'min'=>0, 'max'=>1}
    }

  end
end
