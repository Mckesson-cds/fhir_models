module FHIR
  class Measure < FHIR::Model
    SEARCH_PARAMS = ["description", "identifier", "status", "title", "topic", "version"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Measure.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Measure.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Measure.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'Measure.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Measure.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Measure.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Measure.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Measure.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'url' => {'type'=>'uri', 'path'=>'Measure.url', 'min'=>0, 'max'=>1},
      'identifier' => {'type'=>'Identifier', 'path'=>'Measure.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'version' => {'type'=>'string', 'path'=>'Measure.version', 'min'=>0, 'max'=>1},
      'name' => {'type'=>'string', 'path'=>'Measure.name', 'min'=>0, 'max'=>1},
      'title' => {'type'=>'string', 'path'=>'Measure.title', 'min'=>0, 'max'=>1},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/module-metadata-status'=>['draft', 'active', 'inactive', 'draft', 'active', 'inactive']}, 'type'=>'code', 'path'=>'Measure.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/module-metadata-status'}},
      'experimental' => {'type'=>'boolean', 'path'=>'Measure.experimental', 'min'=>0, 'max'=>1},
      'description' => {'type'=>'string', 'path'=>'Measure.description', 'min'=>0, 'max'=>1},
      'purpose' => {'type'=>'string', 'path'=>'Measure.purpose', 'min'=>0, 'max'=>1},
      'usage' => {'type'=>'string', 'path'=>'Measure.usage', 'min'=>0, 'max'=>1},
      'publicationDate' => {'type'=>'date', 'path'=>'Measure.publicationDate', 'min'=>0, 'max'=>1},
      'lastReviewDate' => {'type'=>'date', 'path'=>'Measure.lastReviewDate', 'min'=>0, 'max'=>1},
      'effectivePeriod' => {'type'=>'Period', 'path'=>'Measure.effectivePeriod', 'min'=>0, 'max'=>1},
      'coverage' => {'type'=>'UsageContext', 'path'=>'Measure.coverage', 'min'=>0, 'max'=>Float::INFINITY},
      'topic' => {'type'=>'CodeableConcept', 'path'=>'Measure.topic', 'min'=>0, 'max'=>Float::INFINITY},
      'contributor' => {'type'=>'Contributor', 'path'=>'Measure.contributor', 'min'=>0, 'max'=>Float::INFINITY},
      'publisher' => {'type'=>'string', 'path'=>'Measure.publisher', 'min'=>0, 'max'=>1},
      'contact' => {'type'=>'ContactDetail', 'path'=>'Measure.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'copyright' => {'type'=>'string', 'path'=>'Measure.copyright', 'min'=>0, 'max'=>1},
      'relatedResource' => {'type'=>'RelatedResource', 'path'=>'Measure.relatedResource', 'min'=>0, 'max'=>Float::INFINITY},
      'library' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Library'], 'type'=>'Reference', 'path'=>'Measure.library', 'min'=>0, 'max'=>Float::INFINITY},
      'disclaimer' => {'type'=>'markdown', 'path'=>'Measure.disclaimer', 'min'=>0, 'max'=>1},
      'scoring' => {'valid_codes'=>{'http://hl7.org/fhir/measure-scoring'=>['proportion', 'ratio', 'continuous-variable', 'cohort', 'proportion', 'ratio', 'continuous-variable', 'cohort']}, 'type'=>'code', 'path'=>'Measure.scoring', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-scoring'}},
      'type' => {'valid_codes'=>{'http://hl7.org/fhir/measure-type'=>['process', 'outcome', 'process', 'outcome']}, 'type'=>'code', 'path'=>'Measure.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-type'}},
      'riskAdjustment' => {'type'=>'string', 'path'=>'Measure.riskAdjustment', 'min'=>0, 'max'=>1},
      'rateAggregation' => {'type'=>'string', 'path'=>'Measure.rateAggregation', 'min'=>0, 'max'=>1},
      'rationale' => {'type'=>'markdown', 'path'=>'Measure.rationale', 'min'=>0, 'max'=>1},
      'clinicalRecommendationStatement' => {'type'=>'markdown', 'path'=>'Measure.clinicalRecommendationStatement', 'min'=>0, 'max'=>1},
      'improvementNotation' => {'type'=>'string', 'path'=>'Measure.improvementNotation', 'min'=>0, 'max'=>1},
      'definition' => {'type'=>'markdown', 'path'=>'Measure.definition', 'min'=>0, 'max'=>1},
      'guidance' => {'type'=>'markdown', 'path'=>'Measure.guidance', 'min'=>0, 'max'=>1},
      'set' => {'type'=>'string', 'path'=>'Measure.set', 'min'=>0, 'max'=>1},
      'group' => {'type'=>'Measure::Group', 'path'=>'Measure.group', 'min'=>0, 'max'=>Float::INFINITY},
      'supplementalData' => {'type'=>'Measure::SupplementalData', 'path'=>'Measure.supplementalData', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Group < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Group.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Group.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Group.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Group.identifier', 'min'=>1, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'Group.name', 'min'=>0, 'max'=>1},
        'description' => {'type'=>'string', 'path'=>'Group.description', 'min'=>0, 'max'=>1},
        'population' => {'type'=>'Measure::Group::Population', 'path'=>'Group.population', 'min'=>0, 'max'=>Float::INFINITY},
        'stratifier' => {'type'=>'Measure::Group::Stratifier', 'path'=>'Group.stratifier', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Population < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Population.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Population.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Population.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/measure-population'=>['initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-score', 'initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-score']}, 'type'=>'code', 'path'=>'Population.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-population'}},
          'identifier' => {'type'=>'Identifier', 'path'=>'Population.identifier', 'min'=>1, 'max'=>1},
          'name' => {'type'=>'string', 'path'=>'Population.name', 'min'=>0, 'max'=>1},
          'description' => {'type'=>'string', 'path'=>'Population.description', 'min'=>0, 'max'=>1},
          'criteria' => {'type'=>'string', 'path'=>'Population.criteria', 'min'=>1, 'max'=>1}
        }
      end

      class Stratifier < FHIR::Model
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Stratifier.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Stratifier.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Stratifier.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'Stratifier.identifier', 'min'=>1, 'max'=>1},
          'criteria' => {'type'=>'string', 'path'=>'Stratifier.criteria', 'min'=>0, 'max'=>1},
          'path' => {'type'=>'string', 'path'=>'Stratifier.path', 'min'=>0, 'max'=>1}
        }
      end
    end

    class SupplementalData < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'SupplementalData.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'SupplementalData.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SupplementalData.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'SupplementalData.identifier', 'min'=>1, 'max'=>1},
        'usage' => {'valid_codes'=>{'http://hl7.org/fhir/measure-data-usage'=>['supplemental-data', 'risk-adjustment-factor', 'supplemental-data', 'risk-adjustment-factor']}, 'type'=>'code', 'path'=>'SupplementalData.usage', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-data-usage'}},
        'criteria' => {'type'=>'string', 'path'=>'SupplementalData.criteria', 'min'=>0, 'max'=>1},
        'path' => {'type'=>'string', 'path'=>'SupplementalData.path', 'min'=>0, 'max'=>1}
      }
    end
  end
end
