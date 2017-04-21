module FHIR
  class Range < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Range.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Range.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'low' => {'type'=>'Quantity', 'path'=>'Range.low', 'min'=>0, 'max'=>1},
      'high' => {'type'=>'Quantity', 'path'=>'Range.high', 'min'=>0, 'max'=>1}
    }

  end
end
