module FHIR
  class EnrollmentResponse < FHIR::Model
    SEARCH_PARAMS = ['identifier', 'organization', 'request']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'EnrollmentResponse.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'EnrollmentResponse.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'EnrollmentResponse.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'EnrollmentResponse.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'EnrollmentResponse.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'EnrollmentResponse.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'EnrollmentResponse.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'EnrollmentResponse.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'EnrollmentResponse.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error', 'active', 'cancelled', 'draft', 'entered-in-error']}, 'type'=>'code', 'path'=>'EnrollmentResponse.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
      'request' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EnrollmentRequest'], 'type'=>'Reference', 'path'=>'EnrollmentResponse.request', 'min'=>0, 'max'=>1},
      'outcome' => {'valid_codes'=>{'http://hl7.org/fhir/remittance-outcome'=>['complete', 'error', 'partial', 'complete', 'error', 'partial']}, 'type'=>'CodeableConcept', 'path'=>'EnrollmentResponse.outcome', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/remittance-outcome'}},
      'disposition' => {'type'=>'string', 'path'=>'EnrollmentResponse.disposition', 'min'=>0, 'max'=>1},
      'created' => {'type'=>'dateTime', 'path'=>'EnrollmentResponse.created', 'min'=>0, 'max'=>1},
      'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'EnrollmentResponse.organization', 'min'=>0, 'max'=>1},
      'requestProvider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner'], 'type'=>'Reference', 'path'=>'EnrollmentResponse.requestProvider', 'min'=>0, 'max'=>1},
      'requestOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'EnrollmentResponse.requestOrganization', 'min'=>0, 'max'=>1}
    }

    attr_accessor :id                  # 0-1 id
    attr_accessor :meta                # 0-1 Meta
    attr_accessor :implicitRules       # 0-1 uri
    attr_accessor :language            # 0-1 code
    attr_accessor :text                # 0-1 Narrative
    attr_accessor :contained           # 0-* [ Resource ]
    attr_accessor :extension           # 0-* [ Extension ]
    attr_accessor :modifierExtension   # 0-* [ Extension ]
    attr_accessor :identifier          # 0-* [ Identifier ]
    attr_accessor :status              # 0-1 code
    attr_accessor :request             # 0-1 Reference(EnrollmentRequest)
    attr_accessor :outcome             # 0-1 CodeableConcept
    attr_accessor :disposition         # 0-1 string
    attr_accessor :created             # 0-1 dateTime
    attr_accessor :organization        # 0-1 Reference(Organization)
    attr_accessor :requestProvider     # 0-1 Reference(Practitioner)
    attr_accessor :requestOrganization # 0-1 Reference(Organization)

    def resourceType
      'EnrollmentResponse'
    end
  end
end