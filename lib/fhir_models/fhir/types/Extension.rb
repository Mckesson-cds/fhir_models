module FHIR
  class Extension < FHIR::Model
    MULTIPLE_TYPES = {
      'value' => ['base64Binary', 'boolean', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'Meta']
    }
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Extension.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Extension.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'url' => {'type'=>'uri', 'path'=>'Extension.url', 'min'=>1, 'max'=>1},
      'valueBase64Binary' => {'type'=>'base64Binary', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueBoolean' => {'type'=>'boolean', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueCode' => {'type'=>'code', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueDate' => {'type'=>'date', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueDateTime' => {'type'=>'dateTime', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueDecimal' => {'type'=>'decimal', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueId' => {'type'=>'id', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueInstant' => {'type'=>'instant', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueInteger' => {'type'=>'integer', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueMarkdown' => {'type'=>'markdown', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueOid' => {'type'=>'oid', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valuePositiveInt' => {'type'=>'positiveInt', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueString' => {'type'=>'string', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueTime' => {'type'=>'time', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueUri' => {'type'=>'uri', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueAddress' => {'type'=>'Address', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueAge' => {'type'=>'Age', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueAnnotation' => {'type'=>'Annotation', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueAttachment' => {'type'=>'Attachment', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueCoding' => {'type'=>'Coding', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueContactPoint' => {'type'=>'ContactPoint', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueCount' => {'type'=>'Count', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueDistance' => {'type'=>'Distance', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueDuration' => {'type'=>'Duration', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueHumanName' => {'type'=>'HumanName', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueIdentifier' => {'type'=>'Identifier', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueMoney' => {'type'=>'Money', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valuePeriod' => {'type'=>'Period', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueQuantity' => {'type'=>'Quantity', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueRange' => {'type'=>'Range', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueRatio' => {'type'=>'Ratio', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueReference' => {'type'=>'Reference', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueSampledData' => {'type'=>'SampledData', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueSignature' => {'type'=>'Signature', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueTiming' => {'type'=>'Timing', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
      'valueMeta' => {'type'=>'Meta', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1}
    }

  end
end
