module FHIR
  class Quantity < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Quantity.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Quantity.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'value' => {'type'=>'decimal', 'path'=>'Quantity.value', 'min'=>0, 'max'=>1},
      'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/quantity-comparator'=>['<', '<=', '>=', '>', '<', '<=', '>=', '>']}, 'type'=>'code', 'path'=>'Quantity.comparator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/quantity-comparator'}},
      'unit' => {'type'=>'string', 'path'=>'Quantity.unit', 'min'=>0, 'max'=>1},
      'system' => {'type'=>'uri', 'path'=>'Quantity.system', 'min'=>0, 'max'=>1},
      'code' => {'type'=>'code', 'path'=>'Quantity.code', 'min'=>0, 'max'=>1}
    }

  end
end
