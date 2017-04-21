module FHIR
  class DocumentManifest < FHIR::Model
    SEARCH_PARAMS = ["author", "content-ref", "created", "description", "identifier", "patient", "recipient", "related-id", "related-ref", "source", "status", "subject", "type"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'DocumentManifest.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'DocumentManifest.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'DocumentManifest.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'DocumentManifest.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'DocumentManifest.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'DocumentManifest.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'DocumentManifest.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'DocumentManifest.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'masterIdentifier' => {'type'=>'Identifier', 'path'=>'DocumentManifest.masterIdentifier', 'min'=>0, 'max'=>1},
      'identifier' => {'type'=>'Identifier', 'path'=>'DocumentManifest.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'DocumentManifest.subject', 'min'=>0, 'max'=>1},
      'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'DocumentManifest.recipient', 'min'=>0, 'max'=>Float::INFINITY},
      'type' => {'valid_codes'=>{'http://loinc.org'=>[]}, 'type'=>'CodeableConcept', 'path'=>'DocumentManifest.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/c80-doc-typecodes'}},
      'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'DocumentManifest.author', 'min'=>0, 'max'=>Float::INFINITY},
      'created' => {'type'=>'dateTime', 'path'=>'DocumentManifest.created', 'min'=>0, 'max'=>1},
      'source' => {'type'=>'uri', 'path'=>'DocumentManifest.source', 'min'=>0, 'max'=>1},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/document-reference-status'=>['current', 'superseded', 'entered-in-error', 'current', 'superseded', 'entered-in-error']}, 'type'=>'code', 'path'=>'DocumentManifest.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/document-reference-status'}},
      'description' => {'type'=>'string', 'path'=>'DocumentManifest.description', 'min'=>0, 'max'=>1},
      'content' => {'type'=>'DocumentManifest::Content', 'path'=>'DocumentManifest.content', 'min'=>1, 'max'=>Float::INFINITY},
      'related' => {'type'=>'DocumentManifest::Related', 'path'=>'DocumentManifest.related', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Content < FHIR::Model
      MULTIPLE_TYPES = {
        'p' => ['Attachment', 'Reference']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Content.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Content.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Content.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'pAttachment' => {'type'=>'Attachment', 'path'=>'Content.p[x]', 'min'=>1, 'max'=>1},
        'pReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Content.p[x]', 'min'=>1, 'max'=>1}
      }
    end

    class Related < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Related.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Related.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Related.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Related.identifier', 'min'=>0, 'max'=>1},
        'ref' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Related.ref', 'min'=>0, 'max'=>1}
      }
    end
  end
end
