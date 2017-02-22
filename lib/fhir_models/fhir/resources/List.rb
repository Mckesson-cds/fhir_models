module FHIR
  class List < FHIR::Model
    SEARCH_PARAMS = ['code', 'date', 'identifier', 'patient', 'encounter', 'empty-reason', 'item', 'notes', 'source', 'status', 'subject', 'title']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'List.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'List.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'List.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'List.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'List.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'List.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'List.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'List.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'List.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/list-status'=>['current', 'retired', 'entered-in-error', 'current', 'retired', 'entered-in-error']}, 'type'=>'code', 'path'=>'List.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/list-status'}},
      'mode' => {'valid_codes'=>{'http://hl7.org/fhir/list-mode'=>['working', 'snapshot', 'changes', 'working', 'snapshot', 'changes']}, 'type'=>'code', 'path'=>'List.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/list-mode'}},
      'title' => {'type'=>'string', 'path'=>'List.title', 'min'=>0, 'max'=>1},
      'code' => {'valid_codes'=>{'http://hl7.org/fhir/list-example-use-codes'=>['alerts', 'adverserxns', 'allergies', 'medications', 'problems', 'worklist', 'waiting', 'protocols', 'plans', 'alerts', 'adverserxns', 'allergies', 'medications', 'problems', 'worklist', 'waiting', 'protocols', 'plans']}, 'type'=>'CodeableConcept', 'path'=>'List.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/list-example-codes'}},
      'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'List.subject', 'min'=>0, 'max'=>1},
      'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'type'=>'Reference', 'path'=>'List.encounter', 'min'=>0, 'max'=>1},
      'date' => {'type'=>'dateTime', 'path'=>'List.date', 'min'=>0, 'max'=>1},
      'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'List.source', 'min'=>0, 'max'=>1},
      'orderedBy' => {'valid_codes'=>{'http://hl7.org/fhir/list-order'=>['user', 'system', 'event-date', 'entry-date', 'priority', 'alphabetic', 'category', 'patient', 'user', 'system', 'event-date', 'entry-date', 'priority', 'alphabetic', 'category', 'patient']}, 'type'=>'CodeableConcept', 'path'=>'List.orderedBy', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/list-order'}},
      'note' => {'type'=>'Annotation', 'path'=>'List.note', 'min'=>0, 'max'=>Float::INFINITY},
      'entry' => {'type'=>'List::Entry', 'path'=>'List.entry', 'min'=>0, 'max'=>Float::INFINITY},
      'emptyReason' => {'valid_codes'=>{'http://hl7.org/fhir/list-empty-reason'=>['nilknown', 'notasked', 'withheld', 'unavailable', 'notstarted', 'closed', 'nilknown', 'notasked', 'withheld', 'unavailable', 'notstarted', 'closed']}, 'type'=>'CodeableConcept', 'path'=>'List.emptyReason', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/list-empty-reason'}}
    }

    class Entry < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Entry.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Entry.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Entry.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'flag' => {'valid_codes'=>{'urn:oid:1.2.36.1.2001.1001.101.104.16592'=>['01', '02', '03', '04', '05', '06', '01', '02', '03', '04', '05', '06']}, 'type'=>'CodeableConcept', 'path'=>'Entry.flag', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/list-item-flag'}},
        'deleted' => {'type'=>'boolean', 'path'=>'Entry.deleted', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'Entry.date', 'min'=>0, 'max'=>1},
        'item' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Entry.item', 'min'=>1, 'max'=>1}
      }
    end
  end
end
