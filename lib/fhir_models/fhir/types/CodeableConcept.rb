module FHIR
  class CodeableConcept < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'CodeableConcept.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'CodeableConcept.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'coding' => {'type'=>'Coding', 'path'=>'CodeableConcept.coding', 'min'=>0, 'max'=>Float::INFINITY},
      'text' => {'type'=>'string', 'path'=>'CodeableConcept.text', 'min'=>0, 'max'=>1}
    }

  end
end
