module FHIR
  class Goal < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    MULTIPLE_TYPES = {
      'start' => ['date', 'CodeableConcept'],
      'target' => ['date', 'Duration']
    }
    SEARCH_PARAMS = ['identifier', 'patient', 'category', 'status', 'subject', 'targetdate']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Goal.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Goal.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Goal.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Goal.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Goal.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Goal.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Goal.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Goal.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'Goal.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/goal-status'=>['proposed', 'planned', 'accepted', 'rejected', 'in-progress', 'achieved', 'sustaining', 'on-hold', 'cancelled', 'on-target', 'ahead-of-target', 'behind-target', 'entered-in-error', 'proposed', 'planned', 'accepted', 'rejected', 'in-progress', 'achieved', 'sustaining', 'on-hold', 'cancelled', 'on-target', 'ahead-of-target', 'behind-target', 'entered-in-error']}, 'type'=>'code', 'path'=>'Goal.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/goal-status'}},
      'category' => {'valid_codes'=>{'http://hl7.org/fhir/goal-category'=>['dietary', 'safety', 'behavioral', 'nursing', 'physiotherapy', 'dietary', 'safety', 'behavioral', 'nursing', 'physiotherapy']}, 'type'=>'CodeableConcept', 'path'=>'Goal.category', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/goal-category'}},
      'priority' => {'valid_codes'=>{'http://hl7.org/fhir/goal-priority'=>['high', 'medium', 'low', 'high', 'medium', 'low']}, 'type'=>'CodeableConcept', 'path'=>'Goal.priority', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/goal-priority'}},
      'description' => {'type'=>'CodeableConcept', 'path'=>'Goal.description', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>nil}},
      'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Goal.subject', 'min'=>0, 'max'=>1},
      'startDate' => {'type'=>'date', 'path'=>'Goal.start[x]', 'min'=>0, 'max'=>1},
      'startCodeableConcept' => {'valid_codes'=>{'http://snomed.info/sct'=>['32485007', '308283009', '442137000', '386216000']}, 'type'=>'CodeableConcept', 'path'=>'Goal.start[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/goal-start-event'}},
      'targetDate' => {'type'=>'date', 'path'=>'Goal.target[x]', 'min'=>0, 'max'=>1},
      'targetDuration' => {'type'=>'Duration', 'path'=>'Goal.target[x]', 'min'=>0, 'max'=>1},
      'statusDate' => {'type'=>'date', 'path'=>'Goal.statusDate', 'min'=>0, 'max'=>1},
      'statusReason' => {'valid_codes'=>{'http://hl7.org/fhir/goal-status-reason'=>['surgery', 'life-event', 'replaced', 'patient-request', 'temp-not-attainable', 'permanent-not-attainable', 'financial-barrier', 'lack-of-transportation', 'lack-of-social-support', 'surgery', 'life-event', 'replaced', 'patient-request', 'temp-not-attainable', 'permanent-not-attainable', 'financial-barrier', 'lack-of-transportation', 'lack-of-social-support']}, 'type'=>'CodeableConcept', 'path'=>'Goal.statusReason', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/goal-status-reason'}},
      'expressedBy' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Goal.expressedBy', 'min'=>0, 'max'=>1},
      'addresses' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/MedicationStatement', 'http://hl7.org/fhir/StructureDefinition/NutritionRequest', 'http://hl7.org/fhir/StructureDefinition/ProcedureRequest', 'http://hl7.org/fhir/StructureDefinition/RiskAssessment'], 'type'=>'Reference', 'path'=>'Goal.addresses', 'min'=>0, 'max'=>Float::INFINITY},
      'note' => {'type'=>'Annotation', 'path'=>'Goal.note', 'min'=>0, 'max'=>Float::INFINITY},
      'outcome' => {'type'=>'Goal::Outcome', 'path'=>'Goal.outcome', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Outcome < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'result' => ['CodeableConcept', 'Reference']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Outcome.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Outcome.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Outcome.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'resultCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Outcome.result[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>nil}},
        'resultReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Observation'], 'type'=>'Reference', 'path'=>'Outcome.result[x]', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                    # 0-1 string
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :resultCodeableConcept # 0-1 CodeableConcept
      attr_accessor :resultReference       # 0-1 Reference(Observation)
    end

    attr_accessor :id                   # 0-1 id
    attr_accessor :meta                 # 0-1 Meta
    attr_accessor :implicitRules        # 0-1 uri
    attr_accessor :language             # 0-1 code
    attr_accessor :text                 # 0-1 Narrative
    attr_accessor :contained            # 0-* [ Resource ]
    attr_accessor :extension            # 0-* [ Extension ]
    attr_accessor :modifierExtension    # 0-* [ Extension ]
    attr_accessor :identifier           # 0-* [ Identifier ]
    attr_accessor :status               # 1-1 code
    attr_accessor :category             # 0-* [ CodeableConcept ]
    attr_accessor :priority             # 0-1 CodeableConcept
    attr_accessor :description          # 1-1 CodeableConcept
    attr_accessor :subject              # 0-1 Reference(Patient|Group|Organization)
    attr_accessor :startDate            # 0-1 date
    attr_accessor :startCodeableConcept # 0-1 CodeableConcept
    attr_accessor :targetDate           # 0-1 date
    attr_accessor :targetDuration       # 0-1 Duration
    attr_accessor :statusDate           # 0-1 date
    attr_accessor :statusReason         # 0-* [ CodeableConcept ]
    attr_accessor :expressedBy          # 0-1 Reference(Patient|Practitioner|RelatedPerson)
    attr_accessor :addresses            # 0-* [ Reference(Condition|Observation|MedicationStatement|NutritionRequest|ProcedureRequest|RiskAssessment) ]
    attr_accessor :note                 # 0-* [ Annotation ]
    attr_accessor :outcome              # 0-* [ Goal::Outcome ]

    def resourceType
      'Goal'
    end
  end
end