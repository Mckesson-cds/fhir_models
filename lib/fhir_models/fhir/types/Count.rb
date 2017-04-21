module FHIR
  class Count < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Count.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Count.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'value' => {'type'=>'decimal', 'path'=>'Count.value', 'min'=>0, 'max'=>1},
      'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/quantity-comparator'=>['<', '<=', '>=', '>', '<', '<=', '>=', '>']}, 'type'=>'code', 'path'=>'Count.comparator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/quantity-comparator'}},
      'unit' => {'type'=>'string', 'path'=>'Count.unit', 'min'=>0, 'max'=>1},
      'system' => {'type'=>'uri', 'path'=>'Count.system', 'min'=>0, 'max'=>1},
      'code' => {'type'=>'code', 'path'=>'Count.code', 'min'=>0, 'max'=>1}
    }

  end
end
