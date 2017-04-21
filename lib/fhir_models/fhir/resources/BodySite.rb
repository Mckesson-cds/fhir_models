module FHIR
  class BodySite < FHIR::Model
    SEARCH_PARAMS = ["code", "identifier", "patient"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'BodySite.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'BodySite.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'BodySite.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'BodySite.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'BodySite.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'BodySite.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'BodySite.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'BodySite.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'BodySite.patient', 'min'=>1, 'max'=>1},
      'identifier' => {'type'=>'Identifier', 'path'=>'BodySite.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'code' => {'valid_codes'=>{'http://snomed.info/sct'=>[]}, 'type'=>'CodeableConcept', 'path'=>'BodySite.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/body-site'}},
      'modifier' => {'valid_codes'=>{'http://snomed.info/sct'=>['419161000', '419465000', '51440002', '261183002', '261122009', '255561001', '49370004', '264217000', '261089000', '255551008', '351726001', '352730000']}, 'type'=>'CodeableConcept', 'path'=>'BodySite.modifier', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/bodysite-relative-location'}},
      'description' => {'type'=>'string', 'path'=>'BodySite.description', 'min'=>0, 'max'=>1},
      'image' => {'type'=>'Attachment', 'path'=>'BodySite.image', 'min'=>0, 'max'=>Float::INFINITY}
    }
  end
end
