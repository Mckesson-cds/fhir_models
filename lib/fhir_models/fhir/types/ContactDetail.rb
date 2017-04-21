module FHIR
  class ContactDetail < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'ContactDetail.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'ContactDetail.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'name' => {'type'=>'string', 'path'=>'ContactDetail.name', 'min'=>0, 'max'=>1},
      'telecom' => {'type'=>'ContactPoint', 'path'=>'ContactDetail.telecom', 'min'=>0, 'max'=>Float::INFINITY}
    }

  end
end
