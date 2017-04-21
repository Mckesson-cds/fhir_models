module FHIR
  class Attachment < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Attachment.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Attachment.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'contentType' => {'type'=>'code', 'path'=>'Attachment.contentType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://www.rfc-editor.org/bcp/bcp13.txt'}},
      'language' => {'type'=>'code', 'path'=>'Attachment.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'data' => {'type'=>'base64Binary', 'path'=>'Attachment.data', 'min'=>0, 'max'=>1},
      'url' => {'type'=>'uri', 'path'=>'Attachment.url', 'min'=>0, 'max'=>1},
      'size' => {'type'=>'unsignedInt', 'path'=>'Attachment.size', 'min'=>0, 'max'=>1},
      'hash' => {'type'=>'base64Binary', 'path'=>'Attachment.hash', 'min'=>0, 'max'=>1},
      'title' => {'type'=>'string', 'path'=>'Attachment.title', 'min'=>0, 'max'=>1},
      'creation' => {'type'=>'dateTime', 'path'=>'Attachment.creation', 'min'=>0, 'max'=>1}
    }

  end
end
