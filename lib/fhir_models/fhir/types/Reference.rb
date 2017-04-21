module FHIR
  class Reference < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Reference.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Reference.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'reference' => {'type'=>'string', 'path'=>'Reference.reference', 'min'=>0, 'max'=>1},
      'display' => {'type'=>'string', 'path'=>'Reference.display', 'min'=>0, 'max'=>1}
    }

  end
end
