module FHIR
  class Annotation < FHIR::Model
    MULTIPLE_TYPES = {
      'author' => ['Reference', 'string']
    }
    SEARCH_PARAMS = 
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Annotation.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Annotation.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'authorReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Annotation.author[x]', 'min'=>0, 'max'=>1},
      'authorString' => {'type'=>'string', 'path'=>'Annotation.author[x]', 'min'=>0, 'max'=>1},
      'time' => {'type'=>'dateTime', 'path'=>'Annotation.time', 'min'=>0, 'max'=>1},
      'text' => {'type'=>'string', 'path'=>'Annotation.text', 'min'=>1, 'max'=>1}
    }

    attr_accessor :id              # 0-1 string
    attr_accessor :extension       # 0-* [ Extension ]
    attr_accessor :authorReference # 0-1 Reference(Practitioner|Patient|RelatedPerson)
    attr_accessor :authorString    # 0-1 string
    attr_accessor :time            # 0-1 dateTime
    attr_accessor :text            # 1-1 string
  end
end