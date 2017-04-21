module FHIR
  class BackboneElement < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'BackboneElement.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'BackboneElement.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'BackboneElement.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY}
    }

  end
end
