module FHIR
  class Coding < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Coding.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Coding.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'system' => {'type'=>'uri', 'path'=>'Coding.system', 'min'=>0, 'max'=>1},
      'version' => {'type'=>'string', 'path'=>'Coding.version', 'min'=>0, 'max'=>1},
      'code' => {'type'=>'code', 'path'=>'Coding.code', 'min'=>0, 'max'=>1},
      'display' => {'type'=>'string', 'path'=>'Coding.display', 'min'=>0, 'max'=>1},
      'userSelected' => {'type'=>'boolean', 'path'=>'Coding.userSelected', 'min'=>0, 'max'=>1}
    }

  end
end
