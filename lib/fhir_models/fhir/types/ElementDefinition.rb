module FHIR
  class ElementDefinition < FHIR::Model
    MULTIPLE_TYPES = {
      'defaultValue' => ['base64Binary', 'boolean', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'Meta'],
      'fixed' => ['base64Binary', 'boolean', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'Meta'],
      'pattern' => ['base64Binary', 'boolean', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'Meta'],
      'example' => ['base64Binary', 'boolean', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'Meta'],
      'minValue' => ['date', 'dateTime', 'instant', 'time', 'decimal', 'integer', 'positiveInt', 'unsignedInt', 'Quantity'],
      'maxValue' => ['date', 'dateTime', 'instant', 'time', 'decimal', 'integer', 'positiveInt', 'unsignedInt', 'Quantity']
    }
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'ElementDefinition.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'ElementDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'path' => {'type'=>'string', 'path'=>'ElementDefinition.path', 'min'=>1, 'max'=>1},
      'representation' => {'valid_codes'=>{'http://hl7.org/fhir/property-representation'=>['xmlAttr', 'xmlText', 'typeAttr', 'cdaText', 'xhtml', 'xmlAttr', 'xmlText', 'typeAttr', 'cdaText', 'xhtml']}, 'type'=>'code', 'path'=>'ElementDefinition.representation', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/property-representation'}},
      'name' => {'type'=>'string', 'path'=>'ElementDefinition.name', 'min'=>0, 'max'=>1},
      'label' => {'type'=>'string', 'path'=>'ElementDefinition.label', 'min'=>0, 'max'=>1},
      'code' => {'valid_codes'=>{'http://loinc.org'=>[]}, 'type'=>'Coding', 'path'=>'ElementDefinition.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/observation-codes'}},
      'slicing' => {'type'=>'ElementDefinition::Slicing', 'path'=>'ElementDefinition.slicing', 'min'=>0, 'max'=>1},
      'short' => {'type'=>'string', 'path'=>'ElementDefinition.short', 'min'=>0, 'max'=>1},
      'definition' => {'type'=>'markdown', 'path'=>'ElementDefinition.definition', 'min'=>0, 'max'=>1},
      'comments' => {'type'=>'markdown', 'path'=>'ElementDefinition.comments', 'min'=>0, 'max'=>1},
      'requirements' => {'type'=>'markdown', 'path'=>'ElementDefinition.requirements', 'min'=>0, 'max'=>1},
      'alias' => {'type'=>'string', 'path'=>'ElementDefinition.alias', 'min'=>0, 'max'=>Float::INFINITY},
      'min' => {'type'=>'integer', 'path'=>'ElementDefinition.min', 'min'=>0, 'max'=>1},
      'max' => {'type'=>'string', 'path'=>'ElementDefinition.max', 'min'=>0, 'max'=>1},
      'base' => {'type'=>'ElementDefinition::Base', 'path'=>'ElementDefinition.base', 'min'=>0, 'max'=>1},
      'contentReference' => {'type'=>'uri', 'path'=>'ElementDefinition.contentReference', 'min'=>0, 'max'=>1},
      'type' => {'type'=>'ElementDefinition::Type', 'path'=>'ElementDefinition.type', 'min'=>0, 'max'=>Float::INFINITY},
      'defaultValueBase64Binary' => {'type'=>'base64Binary', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueBoolean' => {'type'=>'boolean', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueCode' => {'type'=>'code', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueDate' => {'type'=>'date', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueDateTime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueId' => {'type'=>'id', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueMarkdown' => {'type'=>'markdown', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueOid' => {'type'=>'oid', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValuePositiveInt' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueString' => {'type'=>'string', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueTime' => {'type'=>'time', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueUri' => {'type'=>'uri', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueAddress' => {'type'=>'Address', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueAge' => {'type'=>'Age', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueAnnotation' => {'type'=>'Annotation', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueAttachment' => {'type'=>'Attachment', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueCoding' => {'type'=>'Coding', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueContactPoint' => {'type'=>'ContactPoint', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueCount' => {'type'=>'Count', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueDistance' => {'type'=>'Distance', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueDuration' => {'type'=>'Duration', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueHumanName' => {'type'=>'HumanName', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueIdentifier' => {'type'=>'Identifier', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueMoney' => {'type'=>'Money', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValuePeriod' => {'type'=>'Period', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueRange' => {'type'=>'Range', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueRatio' => {'type'=>'Ratio', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueReference' => {'type'=>'Reference', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueSampledData' => {'type'=>'SampledData', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueSignature' => {'type'=>'Signature', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueTiming' => {'type'=>'Timing', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueMeta' => {'type'=>'Meta', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'meaningWhenMissing' => {'type'=>'markdown', 'path'=>'ElementDefinition.meaningWhenMissing', 'min'=>0, 'max'=>1},
      'fixedBase64Binary' => {'type'=>'base64Binary', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedBoolean' => {'type'=>'boolean', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedCode' => {'type'=>'code', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedDate' => {'type'=>'date', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedDateTime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedId' => {'type'=>'id', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedMarkdown' => {'type'=>'markdown', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedOid' => {'type'=>'oid', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedPositiveInt' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedString' => {'type'=>'string', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedTime' => {'type'=>'time', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedUri' => {'type'=>'uri', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedAddress' => {'type'=>'Address', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedAge' => {'type'=>'Age', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedAnnotation' => {'type'=>'Annotation', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedAttachment' => {'type'=>'Attachment', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedCoding' => {'type'=>'Coding', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedContactPoint' => {'type'=>'ContactPoint', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedCount' => {'type'=>'Count', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedDistance' => {'type'=>'Distance', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedDuration' => {'type'=>'Duration', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedHumanName' => {'type'=>'HumanName', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedIdentifier' => {'type'=>'Identifier', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedMoney' => {'type'=>'Money', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedPeriod' => {'type'=>'Period', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedRange' => {'type'=>'Range', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedRatio' => {'type'=>'Ratio', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedReference' => {'type'=>'Reference', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedSampledData' => {'type'=>'SampledData', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedSignature' => {'type'=>'Signature', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedTiming' => {'type'=>'Timing', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedMeta' => {'type'=>'Meta', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'patternBase64Binary' => {'type'=>'base64Binary', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternBoolean' => {'type'=>'boolean', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternCode' => {'type'=>'code', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternDate' => {'type'=>'date', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternDateTime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternId' => {'type'=>'id', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternMarkdown' => {'type'=>'markdown', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternOid' => {'type'=>'oid', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternPositiveInt' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternString' => {'type'=>'string', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternTime' => {'type'=>'time', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternUri' => {'type'=>'uri', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternAddress' => {'type'=>'Address', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternAge' => {'type'=>'Age', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternAnnotation' => {'type'=>'Annotation', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternAttachment' => {'type'=>'Attachment', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternCoding' => {'type'=>'Coding', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternContactPoint' => {'type'=>'ContactPoint', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternCount' => {'type'=>'Count', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternDistance' => {'type'=>'Distance', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternDuration' => {'type'=>'Duration', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternHumanName' => {'type'=>'HumanName', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternIdentifier' => {'type'=>'Identifier', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternMoney' => {'type'=>'Money', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternPeriod' => {'type'=>'Period', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternRange' => {'type'=>'Range', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternRatio' => {'type'=>'Ratio', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternReference' => {'type'=>'Reference', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternSampledData' => {'type'=>'SampledData', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternSignature' => {'type'=>'Signature', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternTiming' => {'type'=>'Timing', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternMeta' => {'type'=>'Meta', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'exampleBase64Binary' => {'type'=>'base64Binary', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleBoolean' => {'type'=>'boolean', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleCode' => {'type'=>'code', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleDate' => {'type'=>'date', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleDateTime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleId' => {'type'=>'id', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleMarkdown' => {'type'=>'markdown', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleOid' => {'type'=>'oid', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'examplePositiveInt' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleString' => {'type'=>'string', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleTime' => {'type'=>'time', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleUri' => {'type'=>'uri', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleAddress' => {'type'=>'Address', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleAge' => {'type'=>'Age', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleAnnotation' => {'type'=>'Annotation', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleAttachment' => {'type'=>'Attachment', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleCoding' => {'type'=>'Coding', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleContactPoint' => {'type'=>'ContactPoint', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleCount' => {'type'=>'Count', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleDistance' => {'type'=>'Distance', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleDuration' => {'type'=>'Duration', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleHumanName' => {'type'=>'HumanName', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleIdentifier' => {'type'=>'Identifier', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleMoney' => {'type'=>'Money', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'examplePeriod' => {'type'=>'Period', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleRange' => {'type'=>'Range', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleRatio' => {'type'=>'Ratio', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleReference' => {'type'=>'Reference', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleSampledData' => {'type'=>'SampledData', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleSignature' => {'type'=>'Signature', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleTiming' => {'type'=>'Timing', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'exampleMeta' => {'type'=>'Meta', 'path'=>'ElementDefinition.example[x]', 'min'=>0, 'max'=>1},
      'minValueDate' => {'type'=>'date', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueDateTime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueTime' => {'type'=>'time', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValuePositiveInt' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'maxValueDate' => {'type'=>'date', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueDateTime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueTime' => {'type'=>'time', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValuePositiveInt' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxLength' => {'type'=>'integer', 'path'=>'ElementDefinition.maxLength', 'min'=>0, 'max'=>1},
      'condition' => {'type'=>'id', 'path'=>'ElementDefinition.condition', 'min'=>0, 'max'=>Float::INFINITY},
      'constraint' => {'type'=>'ElementDefinition::Constraint', 'path'=>'ElementDefinition.constraint', 'min'=>0, 'max'=>Float::INFINITY},
      'mustSupport' => {'type'=>'boolean', 'path'=>'ElementDefinition.mustSupport', 'min'=>0, 'max'=>1},
      'isModifier' => {'type'=>'boolean', 'path'=>'ElementDefinition.isModifier', 'min'=>0, 'max'=>1},
      'isSummary' => {'type'=>'boolean', 'path'=>'ElementDefinition.isSummary', 'min'=>0, 'max'=>1},
      'binding' => {'type'=>'ElementDefinition::Binding', 'path'=>'ElementDefinition.binding', 'min'=>0, 'max'=>1},
      'mapping' => {'type'=>'ElementDefinition::Mapping', 'path'=>'ElementDefinition.mapping', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Slicing < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Slicing.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Slicing.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'discriminator' => {'type'=>'string', 'path'=>'Slicing.discriminator', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'string', 'path'=>'Slicing.description', 'min'=>0, 'max'=>1},
        'ordered' => {'type'=>'boolean', 'path'=>'Slicing.ordered', 'min'=>0, 'max'=>1},
        'rules' => {'valid_codes'=>{'http://hl7.org/fhir/resource-slicing-rules'=>['closed', 'open', 'openAtEnd', 'closed', 'open', 'openAtEnd']}, 'type'=>'code', 'path'=>'Slicing.rules', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-slicing-rules'}}
      }

    end

    class Base < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Base.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Base.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'path' => {'type'=>'string', 'path'=>'Base.path', 'min'=>1, 'max'=>1},
        'min' => {'type'=>'integer', 'path'=>'Base.min', 'min'=>1, 'max'=>1},
        'max' => {'type'=>'string', 'path'=>'Base.max', 'min'=>1, 'max'=>1}
      }

    end

    class Type < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Type.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Type.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://hl7.org/fhir/data-types'=>['Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Duration', 'Element', 'ElementDefinition', 'Extension', 'HumanName', 'Identifier', 'Meta', 'Money', 'Narrative', 'ParameterDefinition', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedResource', 'SampledData', 'Signature', 'SimpleQuantity', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'uuid', 'xhtml', 'Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Duration', 'Element', 'ElementDefinition', 'Extension', 'HumanName', 'Identifier', 'Meta', 'Money', 'Narrative', 'ParameterDefinition', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedResource', 'SampledData', 'Signature', 'SimpleQuantity', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'uuid', 'xhtml'], 'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BodySite', 'Bundle', 'CarePlan', 'CareTeam', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Conformance', 'Consent', 'Contract', 'Coverage', 'DataElement', 'DecisionSupportServiceModule', 'DetectedIssue', 'Device', 'DeviceComponent', 'DeviceMetric', 'DeviceUseRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DiagnosticRequest', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EligibilityRequest', 'EligibilityResponse', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'ExpansionProfile', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingManifest', 'ImagingStudy', 'Immunization', 'ImmunizationRecommendation', 'ImplementationGuide', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationOrder', 'MedicationStatement', 'MessageHeader', 'NamingSystem', 'NutritionRequest', 'Observation', 'OperationDefinition', 'OperationOutcome', 'Organization', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'ProcedureRequest', 'ProcessRequest', 'ProcessResponse', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'ReferralRequest', 'RelatedPerson', 'Resource', 'RiskAssessment', 'Schedule', 'SearchParameter', 'Sequence', 'Slot', 'Specimen', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TestScript', 'ValueSet', 'VisionPrescription', 'Account', 'ActivityDefinition', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BodySite', 'Bundle', 'CarePlan', 'CareTeam', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Conformance', 'Consent', 'Contract', 'Coverage', 'DataElement', 'DecisionSupportServiceModule', 'DetectedIssue', 'Device', 'DeviceComponent', 'DeviceMetric', 'DeviceUseRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DiagnosticRequest', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EligibilityRequest', 'EligibilityResponse', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'ExpansionProfile', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingManifest', 'ImagingStudy', 'Immunization', 'ImmunizationRecommendation', 'ImplementationGuide', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationOrder', 'MedicationStatement', 'MessageHeader', 'NamingSystem', 'NutritionRequest', 'Observation', 'OperationDefinition', 'OperationOutcome', 'Organization', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'ProcedureRequest', 'ProcessRequest', 'ProcessResponse', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'ReferralRequest', 'RelatedPerson', 'Resource', 'RiskAssessment', 'Schedule', 'SearchParameter', 'Sequence', 'Slot', 'Specimen', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TestScript', 'ValueSet', 'VisionPrescription']}, 'type'=>'code', 'path'=>'Type.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/defined-types'}},
        'profile' => {'type'=>'uri', 'path'=>'Type.profile', 'min'=>0, 'max'=>1},
        'targetProfile' => {'type'=>'uri', 'path'=>'Type.targetProfile', 'min'=>0, 'max'=>1},
        'aggregation' => {'valid_codes'=>{'http://hl7.org/fhir/resource-aggregation-mode'=>['contained', 'referenced', 'bundled', 'contained', 'referenced']}, 'type'=>'code', 'path'=>'Type.aggregation', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-aggregation-mode'}},
        'versioning' => {'valid_codes'=>{'http://hl7.org/fhir/reference-version-rules'=>['either', 'independent', 'specific', 'either', 'independent', 'specific']}, 'type'=>'code', 'path'=>'Type.versioning', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/reference-version-rules'}}
      }

    end

    class Constraint < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Constraint.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Constraint.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'key' => {'type'=>'id', 'path'=>'Constraint.key', 'min'=>1, 'max'=>1},
        'requirements' => {'type'=>'string', 'path'=>'Constraint.requirements', 'min'=>0, 'max'=>1},
        'severity' => {'valid_codes'=>{'http://hl7.org/fhir/constraint-severity'=>['error', 'warning', 'error', 'warning']}, 'type'=>'code', 'path'=>'Constraint.severity', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/constraint-severity'}},
        'human' => {'type'=>'string', 'path'=>'Constraint.human', 'min'=>1, 'max'=>1},
        'expression' => {'type'=>'string', 'path'=>'Constraint.expression', 'min'=>0, 'max'=>1},
        'xpath' => {'type'=>'string', 'path'=>'Constraint.xpath', 'min'=>1, 'max'=>1}
      }

    end

    class Binding < FHIR::Model
      MULTIPLE_TYPES = {
        'valueSet' => ['uri', 'Reference']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Binding.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Binding.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'strength' => {'valid_codes'=>{'http://hl7.org/fhir/binding-strength'=>['required', 'extensible', 'preferred', 'example', 'required', 'extensible', 'preferred', 'example']}, 'type'=>'code', 'path'=>'Binding.strength', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/binding-strength'}},
        'description' => {'type'=>'string', 'path'=>'Binding.description', 'min'=>0, 'max'=>1},
        'valueSetUri' => {'type'=>'uri', 'path'=>'Binding.valueSet[x]', 'min'=>0, 'max'=>1},
        'valueSetReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ValueSet'], 'type'=>'Reference', 'path'=>'Binding.valueSet[x]', 'min'=>0, 'max'=>1}
      }

    end

    class Mapping < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Mapping.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Mapping.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identity' => {'type'=>'id', 'path'=>'Mapping.identity', 'min'=>1, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'Mapping.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://www.rfc-editor.org/bcp/bcp13.txt'}},
        'map' => {'type'=>'string', 'path'=>'Mapping.map', 'min'=>1, 'max'=>1}
      }

    end

  end
end
