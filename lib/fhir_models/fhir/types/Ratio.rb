module FHIR
  class Ratio < FHIR::Model
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Ratio.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Ratio.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'numerator' => {'type'=>'Quantity', 'path'=>'Ratio.numerator', 'min'=>0, 'max'=>1},
      'denominator' => {'type'=>'Quantity', 'path'=>'Ratio.denominator', 'min'=>0, 'max'=>1}
    }

  end
end
