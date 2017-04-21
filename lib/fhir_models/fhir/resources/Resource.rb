module FHIR
  class Resource < FHIR::Model
    SEARCH_PARAMS = ["_id", "_lastUpdated", "_profile", "_security", "_tag"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Resource.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Resource.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Resource.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'Resource.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}}
    }
  end
end
