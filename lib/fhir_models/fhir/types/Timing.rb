module FHIR
  class Timing < FHIR::Model
    SEARCH_PARAMS = 
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'Timing.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'Timing.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'event' => {'type'=>'dateTime', 'path'=>'Timing.event', 'min'=>0, 'max'=>Float::INFINITY},
      'repeat' => {'type'=>'Timing::Repeat', 'path'=>'Timing.repeat', 'min'=>0, 'max'=>1},
      'code' => {'valid_codes'=>{'http://hl7.org/fhir/v3/GTSAbbreviation'=>['BID', 'TID', 'QID', 'AM', 'PM', 'QD', 'QOD', 'Q4H', 'Q6H']}, 'type'=>'CodeableConcept', 'path'=>'Timing.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/timing-abbreviation'}}
    }

    class Repeat < FHIR::Model
      MULTIPLE_TYPES = {
        'bounds' => ['Duration', 'Range', 'Period']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Repeat.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Repeat.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'boundsDuration' => {'type'=>'Duration', 'path'=>'Repeat.bounds[x]', 'min'=>0, 'max'=>1},
        'boundsRange' => {'type'=>'Range', 'path'=>'Repeat.bounds[x]', 'min'=>0, 'max'=>1},
        'boundsPeriod' => {'type'=>'Period', 'path'=>'Repeat.bounds[x]', 'min'=>0, 'max'=>1},
        'count' => {'type'=>'integer', 'path'=>'Repeat.count', 'min'=>0, 'max'=>1},
        'countMax' => {'type'=>'integer', 'path'=>'Repeat.countMax', 'min'=>0, 'max'=>1},
        'duration' => {'type'=>'decimal', 'path'=>'Repeat.duration', 'min'=>0, 'max'=>1},
        'durationMax' => {'type'=>'decimal', 'path'=>'Repeat.durationMax', 'min'=>0, 'max'=>1},
        'durationUnit' => {'valid_codes'=>{'http://unitsofmeasure.org'=>['s', 'min', 'h', 'd', 'wk', 'mo', 'a']}, 'type'=>'code', 'path'=>'Repeat.durationUnit', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/units-of-time'}},
        'frequency' => {'type'=>'integer', 'path'=>'Repeat.frequency', 'min'=>0, 'max'=>1},
        'frequencyMax' => {'type'=>'integer', 'path'=>'Repeat.frequencyMax', 'min'=>0, 'max'=>1},
        'period' => {'type'=>'decimal', 'path'=>'Repeat.period', 'min'=>0, 'max'=>1},
        'periodMax' => {'type'=>'decimal', 'path'=>'Repeat.periodMax', 'min'=>0, 'max'=>1},
        'periodUnit' => {'valid_codes'=>{'http://unitsofmeasure.org'=>['s', 'min', 'h', 'd', 'wk', 'mo', 'a']}, 'type'=>'code', 'path'=>'Repeat.periodUnit', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/units-of-time'}},
        'dayOfWeek' => {'valid_codes'=>{'http://hl7.org/fhir/days-of-week'=>['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']}, 'type'=>'code', 'path'=>'Repeat.dayOfWeek', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/days-of-week'}},
        'timeOfDay' => {'type'=>'time', 'path'=>'Repeat.timeOfDay', 'min'=>0, 'max'=>Float::INFINITY},
        'when' => {'valid_codes'=>{'http://hl7.org/fhir/event-timing'=>['MORN', 'AFT', 'EVE', 'NIGHT', 'MORN', 'AFT', 'EVE', 'NIGHT'], 'http://hl7.org/fhir/v3/TimingEvent'=>['HS', 'WAKE', 'C', 'CM', 'CD', 'CV', 'AC', 'ACM', 'ACD', 'ACV', 'PC', 'PCM', 'PCD', 'PCV']}, 'type'=>'code', 'path'=>'Repeat.when', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/event-timing'}},
        'offset' => {'type'=>'unsignedInt', 'path'=>'Repeat.offset', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id             # 0-1 string
      attr_accessor :extension      # 0-* [ Extension ]
      attr_accessor :boundsDuration # 0-1 Duration
      attr_accessor :boundsRange    # 0-1 Range
      attr_accessor :boundsPeriod   # 0-1 Period
      attr_accessor :count          # 0-1 integer
      attr_accessor :countMax       # 0-1 integer
      attr_accessor :duration       # 0-1 decimal
      attr_accessor :durationMax    # 0-1 decimal
      attr_accessor :durationUnit   # 0-1 code
      attr_accessor :frequency      # 0-1 integer
      attr_accessor :frequencyMax   # 0-1 integer
      attr_accessor :period         # 0-1 decimal
      attr_accessor :periodMax      # 0-1 decimal
      attr_accessor :periodUnit     # 0-1 code
      attr_accessor :dayOfWeek      # 0-* [ code ]
      attr_accessor :timeOfDay      # 0-* [ time ]
      attr_accessor :when           # 0-1 code
      attr_accessor :offset         # 0-1 unsignedInt
    end

    attr_accessor :id        # 0-1 string
    attr_accessor :extension # 0-* [ Extension ]
    attr_accessor :event     # 0-* [ dateTime ]
    attr_accessor :repeat    # 0-1 Timing::Repeat
    attr_accessor :code      # 0-1 CodeableConcept
  end
end