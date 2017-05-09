module FHIR
  class HumanName < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'HumanName.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'HumanName.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'use' => {'valid_codes'=>{'http://hl7.org/fhir/name-use'=>['usual', 'official', 'temp', 'nickname', 'anonymous', 'old', 'maiden', 'usual', 'official', 'temp', 'nickname', 'anonymous', 'old', 'maiden']}, 'type'=>'code', 'path'=>'HumanName.use', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/name-use'}},
      'text' => {'type'=>'string', 'path'=>'HumanName.text', 'min'=>0, 'max'=>1},
      'family' => {'type'=>'string', 'path'=>'HumanName.family', 'min'=>0, 'max'=>Float::INFINITY},
      'given' => {'type'=>'string', 'path'=>'HumanName.given', 'min'=>0, 'max'=>Float::INFINITY},
      'prefix' => {'type'=>'string', 'path'=>'HumanName.prefix', 'min'=>0, 'max'=>Float::INFINITY},
      'suffix' => {'type'=>'string', 'path'=>'HumanName.suffix', 'min'=>0, 'max'=>Float::INFINITY},
      'period' => {'type'=>'Period', 'path'=>'HumanName.period', 'min'=>0, 'max'=>1}
    }

  end
end
