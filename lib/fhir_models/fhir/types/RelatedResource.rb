module FHIR
  class RelatedResource < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'RelatedResource.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'RelatedResource.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'type' => {'valid_codes'=>{'http://hl7.org/fhir/related-resource-type'=>['documentation', 'justification', 'citation', 'predecessor', 'successor', 'derived-from', 'depends-on', 'composed-of', 'documentation', 'justification', 'citation', 'predecessor', 'successor', 'derived-from', 'depends-on', 'composed-of']}, 'type'=>'code', 'path'=>'RelatedResource.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/related-resource-type'}},
      'display' => {'type'=>'string', 'path'=>'RelatedResource.display', 'min'=>0, 'max'=>1},
      'citation' => {'type'=>'string', 'path'=>'RelatedResource.citation', 'min'=>0, 'max'=>1},
      'url' => {'type'=>'uri', 'path'=>'RelatedResource.url', 'min'=>0, 'max'=>1},
      'document' => {'type'=>'Attachment', 'path'=>'RelatedResource.document', 'min'=>0, 'max'=>1},
      'resource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'RelatedResource.resource', 'min'=>0, 'max'=>1}
    }

  end
end
