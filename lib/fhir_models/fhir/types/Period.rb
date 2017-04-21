module FHIR
  class Period < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Period.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Period.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'start' => {'type'=>'dateTime', 'path'=>'Period.start', 'min'=>0, 'max'=>1},
      'end' => {'type'=>'dateTime', 'path'=>'Period.end', 'min'=>0, 'max'=>1}
    }

  end
end
