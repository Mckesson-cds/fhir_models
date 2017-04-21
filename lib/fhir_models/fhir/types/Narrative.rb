module FHIR
  class Narrative < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Narrative.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Narrative.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/narrative-status'=>['generated', 'extensions', 'additional', 'empty', 'generated', 'extensions', 'additional', 'empty']}, 'type'=>'code', 'path'=>'Narrative.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/narrative-status'}},
      'div' => {'type'=>'xhtml', 'path'=>'Narrative.div', 'min'=>1, 'max'=>1}
    }

  end
end
