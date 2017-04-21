module FHIR
  class Distance < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Distance.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Distance.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'value' => {'type'=>'decimal', 'path'=>'Distance.value', 'min'=>0, 'max'=>1},
      'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/quantity-comparator'=>['<', '<=', '>=', '>', '<', '<=', '>=', '>']}, 'type'=>'code', 'path'=>'Distance.comparator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/quantity-comparator'}},
      'unit' => {'type'=>'string', 'path'=>'Distance.unit', 'min'=>0, 'max'=>1},
      'system' => {'type'=>'uri', 'path'=>'Distance.system', 'min'=>0, 'max'=>1},
      'code' => {'type'=>'code', 'path'=>'Distance.code', 'min'=>0, 'max'=>1}
    }

  end
end
