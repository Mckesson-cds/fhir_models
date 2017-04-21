module FHIR
  class Money < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Money.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Money.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'value' => {'type'=>'decimal', 'path'=>'Money.value', 'min'=>0, 'max'=>1},
      'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/quantity-comparator'=>['<', '<=', '>=', '>', '<', '<=', '>=', '>']}, 'type'=>'code', 'path'=>'Money.comparator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/quantity-comparator'}},
      'unit' => {'type'=>'string', 'path'=>'Money.unit', 'min'=>0, 'max'=>1},
      'system' => {'type'=>'uri', 'path'=>'Money.system', 'min'=>0, 'max'=>1},
      'code' => {'type'=>'code', 'path'=>'Money.code', 'min'=>0, 'max'=>1}
    }

  end
end
