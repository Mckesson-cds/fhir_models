module FHIR
  class ExpansionProfile < FHIR::Model
    SEARCH_PARAMS = ["date", "description", "identifier", "name", "publisher", "status", "url", "version"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'ExpansionProfile.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'ExpansionProfile.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'ExpansionProfile.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'ExpansionProfile.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'ExpansionProfile.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'ExpansionProfile.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'ExpansionProfile.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'ExpansionProfile.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'url' => {'type'=>'uri', 'path'=>'ExpansionProfile.url', 'min'=>0, 'max'=>1},
      'identifier' => {'type'=>'Identifier', 'path'=>'ExpansionProfile.identifier', 'min'=>0, 'max'=>1},
      'version' => {'type'=>'string', 'path'=>'ExpansionProfile.version', 'min'=>0, 'max'=>1},
      'name' => {'type'=>'string', 'path'=>'ExpansionProfile.name', 'min'=>0, 'max'=>1},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/conformance-resource-status'=>['draft', 'active', 'retired', 'draft', 'active', 'retired']}, 'type'=>'code', 'path'=>'ExpansionProfile.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/conformance-resource-status'}},
      'experimental' => {'type'=>'boolean', 'path'=>'ExpansionProfile.experimental', 'min'=>0, 'max'=>1},
      'publisher' => {'type'=>'string', 'path'=>'ExpansionProfile.publisher', 'min'=>0, 'max'=>1},
      'contact' => {'type'=>'ExpansionProfile::Contact', 'path'=>'ExpansionProfile.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'date' => {'type'=>'dateTime', 'path'=>'ExpansionProfile.date', 'min'=>0, 'max'=>1},
      'description' => {'type'=>'markdown', 'path'=>'ExpansionProfile.description', 'min'=>0, 'max'=>1},
      'codeSystem' => {'type'=>'ExpansionProfile::CodeSystem', 'path'=>'ExpansionProfile.codeSystem', 'min'=>0, 'max'=>1},
      'includeDesignations' => {'type'=>'boolean', 'path'=>'ExpansionProfile.includeDesignations', 'min'=>0, 'max'=>1},
      'designation' => {'type'=>'ExpansionProfile::Designation', 'path'=>'ExpansionProfile.designation', 'min'=>0, 'max'=>1},
      'includeDefinition' => {'type'=>'boolean', 'path'=>'ExpansionProfile.includeDefinition', 'min'=>0, 'max'=>1},
      'includeInactive' => {'type'=>'boolean', 'path'=>'ExpansionProfile.includeInactive', 'min'=>0, 'max'=>1},
      'excludeNested' => {'type'=>'boolean', 'path'=>'ExpansionProfile.excludeNested', 'min'=>0, 'max'=>1},
      'excludeNotForUI' => {'type'=>'boolean', 'path'=>'ExpansionProfile.excludeNotForUI', 'min'=>0, 'max'=>1},
      'excludePostCoordinated' => {'type'=>'boolean', 'path'=>'ExpansionProfile.excludePostCoordinated', 'min'=>0, 'max'=>1},
      'displayLanguage' => {'type'=>'code', 'path'=>'ExpansionProfile.displayLanguage', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'limitedExpansion' => {'type'=>'boolean', 'path'=>'ExpansionProfile.limitedExpansion', 'min'=>0, 'max'=>1}
    }

    class Contact < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Contact.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Contact.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Contact.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'type'=>'string', 'path'=>'Contact.name', 'min'=>0, 'max'=>1},
        'telecom' => {'type'=>'ContactPoint', 'path'=>'Contact.telecom', 'min'=>0, 'max'=>Float::INFINITY}
      }
    end

    class CodeSystem < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'CodeSystem.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'CodeSystem.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'CodeSystem.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'include' => {'type'=>'ExpansionProfile::CodeSystem::Include', 'path'=>'CodeSystem.include', 'min'=>0, 'max'=>1},
        'exclude' => {'type'=>'ExpansionProfile::CodeSystem::Exclude', 'path'=>'CodeSystem.exclude', 'min'=>0, 'max'=>1}
      }

      class Include < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Include.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Include.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Include.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'codeSystem' => {'type'=>'ExpansionProfile::CodeSystem::Include::CodeSystem', 'path'=>'Include.codeSystem', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class CodeSystem < FHIR::Model
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'CodeSystem.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'CodeSystem.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'CodeSystem.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'system' => {'type'=>'uri', 'path'=>'CodeSystem.system', 'min'=>1, 'max'=>1},
            'version' => {'type'=>'string', 'path'=>'CodeSystem.version', 'min'=>0, 'max'=>1}
          }
        end
      end

      class Exclude < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Exclude.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Exclude.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Exclude.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'codeSystem' => {'type'=>'ExpansionProfile::CodeSystem::Exclude::CodeSystem', 'path'=>'Exclude.codeSystem', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class CodeSystem < FHIR::Model
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'CodeSystem.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'CodeSystem.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'CodeSystem.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'system' => {'type'=>'uri', 'path'=>'CodeSystem.system', 'min'=>1, 'max'=>1},
            'version' => {'type'=>'string', 'path'=>'CodeSystem.version', 'min'=>0, 'max'=>1}
          }
        end
      end
    end

    class Designation < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Designation.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Designation.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Designation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'include' => {'type'=>'ExpansionProfile::Designation::Include', 'path'=>'Designation.include', 'min'=>0, 'max'=>1},
        'exclude' => {'type'=>'ExpansionProfile::Designation::Exclude', 'path'=>'Designation.exclude', 'min'=>0, 'max'=>1}
      }

      class Include < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Include.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Include.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Include.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'designation' => {'type'=>'ExpansionProfile::Designation::Include::Designation', 'path'=>'Include.designation', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Designation < FHIR::Model
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Designation.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Designation.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Designation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'language' => {'type'=>'code', 'path'=>'Designation.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
            'use' => {'valid_codes'=>{'http://snomed.info/sct'=>['900000000000003001', '900000000000013009', '900000000000550004']}, 'type'=>'Coding', 'path'=>'Designation.use', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/designation-use'}}
          }
        end
      end

      class Exclude < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Exclude.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Exclude.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Exclude.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'designation' => {'type'=>'ExpansionProfile::Designation::Exclude::Designation', 'path'=>'Exclude.designation', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Designation < FHIR::Model
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Designation.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Designation.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Designation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'language' => {'type'=>'code', 'path'=>'Designation.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
            'use' => {'valid_codes'=>{'http://snomed.info/sct'=>['900000000000003001', '900000000000013009', '900000000000550004']}, 'type'=>'Coding', 'path'=>'Designation.use', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/designation-use'}}
          }
        end
      end
    end
  end
end
