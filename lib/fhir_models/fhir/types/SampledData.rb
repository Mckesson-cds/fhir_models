module FHIR
  class SampledData < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'SampledData.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'SampledData.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'origin' => {'type'=>'Quantity', 'path'=>'SampledData.origin', 'min'=>1, 'max'=>1},
      'period' => {'type'=>'decimal', 'path'=>'SampledData.period', 'min'=>1, 'max'=>1},
      'factor' => {'type'=>'decimal', 'path'=>'SampledData.factor', 'min'=>0, 'max'=>1},
      'lowerLimit' => {'type'=>'decimal', 'path'=>'SampledData.lowerLimit', 'min'=>0, 'max'=>1},
      'upperLimit' => {'type'=>'decimal', 'path'=>'SampledData.upperLimit', 'min'=>0, 'max'=>1},
      'dimensions' => {'type'=>'positiveInt', 'path'=>'SampledData.dimensions', 'min'=>1, 'max'=>1},
      'data' => {'type'=>'string', 'path'=>'SampledData.data', 'min'=>1, 'max'=>1}
    }

  end
end
