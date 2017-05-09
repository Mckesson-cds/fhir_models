module FHIR
  class Address < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Address.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Address.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'use' => {'valid_codes'=>{'http://hl7.org/fhir/address-use'=>['home', 'work', 'temp', 'old', 'home', 'work', 'temp', 'old']}, 'type'=>'code', 'path'=>'Address.use', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/address-use'}},
      'type' => {'valid_codes'=>{'http://hl7.org/fhir/address-type'=>['postal', 'physical', 'both', 'postal', 'physical', 'both']}, 'type'=>'code', 'path'=>'Address.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/address-type'}},
      'text' => {'type'=>'string', 'path'=>'Address.text', 'min'=>0, 'max'=>1},
      'line' => {'type'=>'string', 'path'=>'Address.line', 'min'=>0, 'max'=>Float::INFINITY},
      'city' => {'type'=>'string', 'path'=>'Address.city', 'min'=>0, 'max'=>1},
      'district' => {'type'=>'string', 'path'=>'Address.district', 'min'=>0, 'max'=>1},
      'state' => {'type'=>'string', 'path'=>'Address.state', 'min'=>0, 'max'=>1},
      'postalCode' => {'type'=>'string', 'path'=>'Address.postalCode', 'min'=>0, 'max'=>1},
      'country' => {'type'=>'string', 'path'=>'Address.country', 'min'=>0, 'max'=>1},
      'period' => {'type'=>'Period', 'path'=>'Address.period', 'min'=>0, 'max'=>1}
    }

  end
end
