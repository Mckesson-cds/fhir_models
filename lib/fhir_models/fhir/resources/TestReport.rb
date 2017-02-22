module FHIR
  class TestReport < FHIR::Model
    SEARCH_PARAMS = ['identifier', 'issued', 'name', 'participant', 'tester', 'testscript']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'TestReport.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'TestReport.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'TestReport.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'TestReport.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'TestReport.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'TestReport.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'TestReport.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'TestReport.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'TestReport.identifier', 'min'=>0, 'max'=>1},
      'name' => {'type'=>'string', 'path'=>'TestReport.name', 'min'=>0, 'max'=>1},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/report-status-codes'=>['complete', 'pending', 'error', 'complete', 'pending', 'error']}, 'type'=>'code', 'path'=>'TestReport.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-status-codes'}},
      'score' => {'type'=>'decimal', 'path'=>'TestReport.score', 'min'=>0, 'max'=>1},
      'tester' => {'type'=>'string', 'path'=>'TestReport.tester', 'min'=>0, 'max'=>1},
      'testScript' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/TestScript'], 'type'=>'Reference', 'path'=>'TestReport.testScript', 'min'=>1, 'max'=>1},
      'issued' => {'type'=>'dateTime', 'path'=>'TestReport.issued', 'min'=>0, 'max'=>1},
      'participant' => {'type'=>'TestReport::Participant', 'path'=>'TestReport.participant', 'min'=>0, 'max'=>Float::INFINITY},
      'setup' => {'type'=>'TestReport::Setup', 'path'=>'TestReport.setup', 'min'=>0, 'max'=>1},
      'test' => {'type'=>'TestReport::Test', 'path'=>'TestReport.test', 'min'=>0, 'max'=>Float::INFINITY},
      'teardown' => {'type'=>'TestReport::Teardown', 'path'=>'TestReport.teardown', 'min'=>0, 'max'=>1}
    }

    class Participant < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Participant.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Participant.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Participant.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/report-participant-type'=>['test-engine', 'client', 'server', 'test-engine', 'client', 'server']}, 'type'=>'code', 'path'=>'Participant.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-participant-type'}},
        'uri' => {'type'=>'uri', 'path'=>'Participant.uri', 'min'=>1, 'max'=>1},
        'display' => {'type'=>'string', 'path'=>'Participant.display', 'min'=>0, 'max'=>1}
      }
    end

    class Setup < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Setup.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Setup.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Setup.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'action' => {'type'=>'TestReport::Setup::Action', 'path'=>'Setup.action', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Action < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Action.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Action.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Action.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'operation' => {'type'=>'TestReport::Setup::Action::Operation', 'path'=>'Action.operation', 'min'=>0, 'max'=>1},
          'assert' => {'type'=>'TestReport::Setup::Action::Assert', 'path'=>'Action.assert', 'min'=>0, 'max'=>1}
        }

        class Operation < FHIR::Model
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Operation.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Operation.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Operation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'result' => {'valid_codes'=>{'http://hl7.org/fhir/report-result-codes'=>['pass', 'skip', 'fail', 'warning', 'error', 'pass', 'skip', 'fail', 'warning', 'error']}, 'type'=>'code', 'path'=>'Operation.result', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-result-codes'}},
            'message' => {'type'=>'markdown', 'path'=>'Operation.message', 'min'=>0, 'max'=>1},
            'detail' => {'type'=>'uri', 'path'=>'Operation.detail', 'min'=>0, 'max'=>1}
          }
        end

        class Assert < FHIR::Model
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Assert.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Assert.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Assert.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'result' => {'valid_codes'=>{'http://hl7.org/fhir/report-result-codes'=>['pass', 'skip', 'fail', 'warning', 'error', 'pass', 'skip', 'fail', 'warning', 'error']}, 'type'=>'code', 'path'=>'Assert.result', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-result-codes'}},
            'message' => {'type'=>'markdown', 'path'=>'Assert.message', 'min'=>0, 'max'=>1},
            'detail' => {'type'=>'string', 'path'=>'Assert.detail', 'min'=>0, 'max'=>1}
          }
        end
      end
    end

    class Test < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Test.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Test.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Test.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'type'=>'string', 'path'=>'Test.name', 'min'=>0, 'max'=>1},
        'description' => {'type'=>'string', 'path'=>'Test.description', 'min'=>0, 'max'=>1},
        'action' => {'type'=>'TestReport::Test::Action', 'path'=>'Test.action', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Action < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Action.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Action.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Action.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'operation' => {'type'=>'TestReport::Setup::Action::Operation', 'path'=>'Action.operation', 'min'=>0, 'max'=>1},
          'assert' => {'type'=>'TestReport::Setup::Action::Assert', 'path'=>'Action.assert', 'min'=>0, 'max'=>1}
        }
      end
    end

    class Teardown < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Teardown.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Teardown.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Teardown.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'action' => {'type'=>'TestReport::Teardown::Action', 'path'=>'Teardown.action', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Action < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Action.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Action.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Action.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'operation' => {'type'=>'TestReport::Setup::Action::Operation', 'path'=>'Action.operation', 'min'=>1, 'max'=>1}
        }
      end
    end
  end
end
