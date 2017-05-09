module FHIR
  class MeasureReport < FHIR::Model
    SEARCH_PARAMS = ["patient"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'MeasureReport.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'MeasureReport.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'MeasureReport.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'MeasureReport.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'MeasureReport.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'MeasureReport.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'MeasureReport.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'MeasureReport.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'measure' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Measure'], 'type'=>'Reference', 'path'=>'MeasureReport.measure', 'min'=>1, 'max'=>1},
      'type' => {'valid_codes'=>{'http://hl7.org/fhir/measure-report-type'=>['individual', 'patient-list', 'summary', 'individual', 'patient-list', 'summary']}, 'type'=>'code', 'path'=>'MeasureReport.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-report-type'}},
      'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'MeasureReport.patient', 'min'=>0, 'max'=>1},
      'period' => {'type'=>'Period', 'path'=>'MeasureReport.period', 'min'=>1, 'max'=>1},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/measure-report-status'=>['complete', 'pending', 'error', 'complete', 'pending', 'error']}, 'type'=>'code', 'path'=>'MeasureReport.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-report-status'}},
      'date' => {'type'=>'dateTime', 'path'=>'MeasureReport.date', 'min'=>0, 'max'=>1},
      'reportingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'MeasureReport.reportingOrganization', 'min'=>0, 'max'=>1},
      'group' => {'type'=>'MeasureReport::Group', 'path'=>'MeasureReport.group', 'min'=>0, 'max'=>Float::INFINITY},
      'evaluatedResources' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Bundle'], 'type'=>'Reference', 'path'=>'MeasureReport.evaluatedResources', 'min'=>0, 'max'=>1}
    }

    class Group < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Group.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Group.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Group.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Group.identifier', 'min'=>1, 'max'=>1},
        'population' => {'type'=>'MeasureReport::Group::Population', 'path'=>'Group.population', 'min'=>0, 'max'=>Float::INFINITY},
        'measureScore' => {'type'=>'decimal', 'path'=>'Group.measureScore', 'min'=>0, 'max'=>1},
        'stratifier' => {'type'=>'MeasureReport::Group::Stratifier', 'path'=>'Group.stratifier', 'min'=>0, 'max'=>Float::INFINITY},
        'supplementalData' => {'type'=>'MeasureReport::Group::SupplementalData', 'path'=>'Group.supplementalData', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Population < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Population.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Population.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Population.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/measure-population'=>['initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-score', 'initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-score']}, 'type'=>'code', 'path'=>'Population.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-population'}},
          'count' => {'type'=>'integer', 'path'=>'Population.count', 'min'=>0, 'max'=>1},
          'patients' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/List'], 'type'=>'Reference', 'path'=>'Population.patients', 'min'=>0, 'max'=>1}
        }
      end

      class Stratifier < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Stratifier.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Stratifier.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Stratifier.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'Stratifier.identifier', 'min'=>1, 'max'=>1},
          'group' => {'type'=>'MeasureReport::Group::Stratifier::Group', 'path'=>'Stratifier.group', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Group < FHIR::Model
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Group.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Group.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Group.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'value' => {'type'=>'string', 'path'=>'Group.value', 'min'=>1, 'max'=>1},
            'population' => {'type'=>'MeasureReport::Group::Stratifier::Group::Population', 'path'=>'Group.population', 'min'=>0, 'max'=>Float::INFINITY},
            'measureScore' => {'type'=>'decimal', 'path'=>'Group.measureScore', 'min'=>0, 'max'=>1}
          }

          class Population < FHIR::Model
            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Population.id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Population.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Population.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'valid_codes'=>{'http://hl7.org/fhir/measure-population'=>['initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-score', 'initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-score']}, 'type'=>'code', 'path'=>'Population.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-population'}},
              'count' => {'type'=>'integer', 'path'=>'Population.count', 'min'=>0, 'max'=>1},
              'patients' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/List'], 'type'=>'Reference', 'path'=>'Population.patients', 'min'=>0, 'max'=>1}
            }
          end
        end
      end

      class SupplementalData < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'SupplementalData.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'SupplementalData.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'SupplementalData.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'SupplementalData.identifier', 'min'=>1, 'max'=>1},
          'group' => {'type'=>'MeasureReport::Group::SupplementalData::Group', 'path'=>'SupplementalData.group', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Group < FHIR::Model
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Group.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Group.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Group.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'value' => {'type'=>'string', 'path'=>'Group.value', 'min'=>1, 'max'=>1},
            'count' => {'type'=>'integer', 'path'=>'Group.count', 'min'=>0, 'max'=>1},
            'patients' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/List'], 'type'=>'Reference', 'path'=>'Group.patients', 'min'=>0, 'max'=>1}
          }
        end
      end
    end
  end
end
