module FHIR
  class Library < FHIR::Model
    SEARCH_PARAMS = ["description", "identifier", "status", "title", "topic", "version"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Library.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Library.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Library.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'Library.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Library.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Library.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Library.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Library.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'url' => {'type'=>'uri', 'path'=>'Library.url', 'min'=>0, 'max'=>1},
      'identifier' => {'type'=>'Identifier', 'path'=>'Library.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'version' => {'type'=>'string', 'path'=>'Library.version', 'min'=>0, 'max'=>1},
      'name' => {'type'=>'string', 'path'=>'Library.name', 'min'=>0, 'max'=>1},
      'title' => {'type'=>'string', 'path'=>'Library.title', 'min'=>0, 'max'=>1},
      'type' => {'valid_codes'=>{'http://hl7.org/fhir/library-type'=>['logic-library', 'model-definition', 'asset-collection', 'module-definition', 'logic-library', 'model-definition', 'asset-collection', 'module-definition']}, 'type'=>'CodeableConcept', 'path'=>'Library.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/library-type'}},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/module-metadata-status'=>['draft', 'active', 'inactive', 'draft', 'active', 'inactive']}, 'type'=>'code', 'path'=>'Library.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/module-metadata-status'}},
      'experimental' => {'type'=>'boolean', 'path'=>'Library.experimental', 'min'=>0, 'max'=>1},
      'description' => {'type'=>'string', 'path'=>'Library.description', 'min'=>0, 'max'=>1},
      'purpose' => {'type'=>'string', 'path'=>'Library.purpose', 'min'=>0, 'max'=>1},
      'usage' => {'type'=>'string', 'path'=>'Library.usage', 'min'=>0, 'max'=>1},
      'publicationDate' => {'type'=>'date', 'path'=>'Library.publicationDate', 'min'=>0, 'max'=>1},
      'lastReviewDate' => {'type'=>'date', 'path'=>'Library.lastReviewDate', 'min'=>0, 'max'=>1},
      'effectivePeriod' => {'type'=>'Period', 'path'=>'Library.effectivePeriod', 'min'=>0, 'max'=>1},
      'coverage' => {'type'=>'UsageContext', 'path'=>'Library.coverage', 'min'=>0, 'max'=>Float::INFINITY},
      'topic' => {'type'=>'CodeableConcept', 'path'=>'Library.topic', 'min'=>0, 'max'=>Float::INFINITY},
      'contributor' => {'type'=>'Contributor', 'path'=>'Library.contributor', 'min'=>0, 'max'=>Float::INFINITY},
      'publisher' => {'type'=>'string', 'path'=>'Library.publisher', 'min'=>0, 'max'=>1},
      'contact' => {'type'=>'ContactDetail', 'path'=>'Library.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'copyright' => {'type'=>'string', 'path'=>'Library.copyright', 'min'=>0, 'max'=>1},
      'relatedResource' => {'type'=>'RelatedResource', 'path'=>'Library.relatedResource', 'min'=>0, 'max'=>Float::INFINITY},
      'parameter' => {'type'=>'ParameterDefinition', 'path'=>'Library.parameter', 'min'=>0, 'max'=>Float::INFINITY},
      'dataRequirement' => {'type'=>'DataRequirement', 'path'=>'Library.dataRequirement', 'min'=>0, 'max'=>Float::INFINITY},
      'content' => {'type'=>'Attachment', 'path'=>'Library.content', 'min'=>1, 'max'=>1}
    }
  end
end
