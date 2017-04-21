module FHIR
  class AppointmentResponse < FHIR::Model
    SEARCH_PARAMS = ["actor", "appointment", "identifier", "location", "part-status", "patient", "practitioner"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'AppointmentResponse.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'AppointmentResponse.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'AppointmentResponse.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'AppointmentResponse.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'AppointmentResponse.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'AppointmentResponse.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'AppointmentResponse.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'AppointmentResponse.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'AppointmentResponse.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'appointment' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Appointment'], 'type'=>'Reference', 'path'=>'AppointmentResponse.appointment', 'min'=>1, 'max'=>1},
      'start' => {'type'=>'instant', 'path'=>'AppointmentResponse.start', 'min'=>0, 'max'=>1},
      'end' => {'type'=>'instant', 'path'=>'AppointmentResponse.end', 'min'=>0, 'max'=>1},
      'participantType' => {'valid_codes'=>{'http://hl7.org/fhir/v3/ParticipationType'=>['ADM', 'ATND', 'CALLBCK', 'CON', 'DIS', 'ESC', 'REF', 'SPRF', 'PPRF', 'PART'], 'http://hl7.org/fhir/participant-type'=>['translator', 'emergency', 'translator', 'emergency']}, 'type'=>'CodeableConcept', 'path'=>'AppointmentResponse.participantType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-participant-type'}},
      'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'AppointmentResponse.actor', 'min'=>0, 'max'=>1},
      'participantStatus' => {'valid_codes'=>{'http://hl7.org/fhir/participationstatus'=>['accepted', 'declined', 'tentative', 'needs-action', 'accepted', 'declined', 'tentative', 'needs-action']}, 'type'=>'code', 'path'=>'AppointmentResponse.participantStatus', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/participationstatus'}},
      'comment' => {'type'=>'string', 'path'=>'AppointmentResponse.comment', 'min'=>0, 'max'=>1}
    }
  end
end
