module FHIR
  class DeviceMetric < FHIR::Model
    SEARCH_PARAMS = ['category', 'identifier', 'parent', 'source', 'type']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'DeviceMetric.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'DeviceMetric.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'DeviceMetric.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'DeviceMetric.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'DeviceMetric.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'DeviceMetric.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'DeviceMetric.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'DeviceMetric.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'type' => {'type'=>'CodeableConcept', 'path'=>'DeviceMetric.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'https://rtmms.nist.gov/rtmms/index.htm#!hrosetta'}},
      'identifier' => {'type'=>'Identifier', 'path'=>'DeviceMetric.identifier', 'min'=>1, 'max'=>1},
      'unit' => {'type'=>'CodeableConcept', 'path'=>'DeviceMetric.unit', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'https://rtmms.nist.gov/rtmms/index.htm#!units'}},
      'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'DeviceMetric.source', 'min'=>0, 'max'=>1},
      'parent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceComponent'], 'type'=>'Reference', 'path'=>'DeviceMetric.parent', 'min'=>0, 'max'=>1},
      'operationalStatus' => {'valid_codes'=>{'http://hl7.org/fhir/metric-operational-status'=>['on', 'off', 'standby', 'on', 'off', 'standby']}, 'type'=>'code', 'path'=>'DeviceMetric.operationalStatus', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-operational-status'}},
      'color' => {'valid_codes'=>{'http://hl7.org/fhir/metric-color'=>['black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan', 'white', 'black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan', 'white']}, 'type'=>'code', 'path'=>'DeviceMetric.color', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-color'}},
      'category' => {'valid_codes'=>{'http://hl7.org/fhir/metric-category'=>['measurement', 'setting', 'calculation', 'unspecified', 'measurement', 'setting', 'calculation', 'unspecified']}, 'type'=>'code', 'path'=>'DeviceMetric.category', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-category'}},
      'measurementPeriod' => {'type'=>'Timing', 'path'=>'DeviceMetric.measurementPeriod', 'min'=>0, 'max'=>1},
      'calibration' => {'type'=>'DeviceMetric::Calibration', 'path'=>'DeviceMetric.calibration', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Calibration < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Calibration.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Calibration.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Calibration.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/metric-calibration-type'=>['unspecified', 'offset', 'gain', 'two-point', 'unspecified', 'offset', 'gain', 'two-point']}, 'type'=>'code', 'path'=>'Calibration.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-calibration-type'}},
        'state' => {'valid_codes'=>{'http://hl7.org/fhir/metric-calibration-state'=>['not-calibrated', 'calibration-required', 'calibrated', 'unspecified', 'not-calibrated', 'calibration-required', 'calibrated', 'unspecified']}, 'type'=>'code', 'path'=>'Calibration.state', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-calibration-state'}},
        'time' => {'type'=>'instant', 'path'=>'Calibration.time', 'min'=>0, 'max'=>1}
      }
    end
  end
end
