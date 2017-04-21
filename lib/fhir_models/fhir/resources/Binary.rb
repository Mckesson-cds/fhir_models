module FHIR
  class Binary < FHIR::Model
    SEARCH_PARAMS = ["contenttype"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Binary.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Binary.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Binary.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'Binary.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'contentType' => {'type'=>'code', 'path'=>'Binary.contentType', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://www.rfc-editor.org/bcp/bcp13.txt'}},
      'content' => {'type'=>'base64Binary', 'path'=>'Binary.content', 'min'=>1, 'max'=>1}
    }
  end
end
