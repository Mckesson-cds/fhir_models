module FHIR
  class Communication < FHIR::Model
    SEARCH_PARAMS = ['based-on', 'category', 'context', 'identifier', 'medium', 'patient', 'received', 'recipient', 'sender', 'sent', 'status', 'subject']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Communication.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Communication.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Communication.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Communication.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Communication.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Communication.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Communication.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Communication.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'Communication.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Communication.basedOn', 'min'=>0, 'max'=>Float::INFINITY},
      'parent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Communication.parent', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/communication-status'=>['in-progress', 'completed', 'suspended', 'rejected', 'failed', 'in-progress', 'completed', 'suspended', 'rejected', 'failed']}, 'type'=>'code', 'path'=>'Communication.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/communication-status'}},
      'category' => {'type'=>'CodeableConcept', 'path'=>'Communication.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>nil}},
      'medium' => {'valid_codes'=>{'http://hl7.org/fhir/v3/ParticipationMode'=>['ELECTRONIC', 'PHYSICAL', 'REMOTE', 'VERBAL', 'DICTATE', 'FACE', 'PHONE', 'VIDEOCONF', 'WRITTEN', 'FAXWRIT', 'HANDWRIT', 'MAILWRIT', 'ONLINEWRIT', 'EMAILWRIT', 'TYPEWRIT']}, 'type'=>'CodeableConcept', 'path'=>'Communication.medium', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/v3-ParticipationMode'}},
      'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'Communication.subject', 'min'=>0, 'max'=>1},
      'topic' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Communication.topic', 'min'=>0, 'max'=>Float::INFINITY},
      'context' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter', 'http://hl7.org/fhir/StructureDefinition/EpisodeOfCare'], 'type'=>'Reference', 'path'=>'Communication.context', 'min'=>0, 'max'=>1},
      'sent' => {'type'=>'dateTime', 'path'=>'Communication.sent', 'min'=>0, 'max'=>1},
      'received' => {'type'=>'dateTime', 'path'=>'Communication.received', 'min'=>0, 'max'=>1},
      'sender' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Communication.sender', 'min'=>0, 'max'=>1},
      'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'Communication.recipient', 'min'=>0, 'max'=>Float::INFINITY},
      'reason' => {'valid_codes'=>{'http://hl7.org/fhir/v3/ActReason'=>['ACCREQNA', 'FLRCNV', 'MEDNEC', 'PAT', 'COVSUS', 'DECSD', 'REGERR', 'AGE', 'CRIME', 'DIS', 'EMPLOY', 'FINAN', 'HEALTH', 'MULTI', 'PNC', 'STATUTORY', 'VEHIC', 'WORK', 'OVRER', 'OVRPJ', 'OVRPS', 'OVRTPS', 'PurposeOfUse', 'HMARKT', 'HOPERAT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'MEMADMIN', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'REMITADV', 'HRESCH', 'CLINTRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CAREMGT', 'CLINTRL', 'ETREAT', 'POPHLTH', 'MARKT', 'OPERAT', 'LEGAL', 'ACCRED', 'COMPL', 'ENADMIN', 'OUTCOMS', 'PRGRPT', 'QUALIMP', 'SYSADMN', 'PAYMT', 'RESCH', 'SRVC', '_ActInvalidReason', 'ADVSTORAGE', 'COLDCHNBRK', 'EXPLOT', 'OUTSIDESCHED', 'PRODRECALL', 'INCCOVPTY', 'INCINVOICE', 'INCPOLICY', 'INCPROV', 'IMMUNE', 'MEDPREC', 'OSTOCK', 'PATOBJ', 'PHILISOP', 'RELIG', 'VACEFF', 'VACSAF', 'FRR01', 'FRR02', 'FRR03', 'FRR04', 'FRR05', 'FRR06', 'RET', 'SCH', 'TRM', 'UNS', 'NPT', 'PPT', 'UPT', 'ALTCHOICE', 'CLARIF', 'DRUGHIGH', 'HOSPADM', 'LABINT', 'NON-AVAIL', 'PREG', 'SALG', 'SDDI', 'SDUPTHER', 'SINTOL', 'SURG', 'WASHOUT', '_ControlActNullificationReasonCode', 'ALTD', 'EIE', 'NORECMTCH', 'INRQSTATE', 'NOMATCH', 'NOPRODMTCH', 'NOSERMTCH', 'NOVERMTCH', 'NOPERM', 'NOUSERPERM', 'NOAGNTPERM', 'NOUSRPERM', 'WRNGVER', 'DISCONT', 'INEFFECT', 'MONIT', 'NOREQ', 'NOTCOVER', 'PREFUS', 'RECALL', 'REPLACE', 'DOSECHG', 'REPLACEFIX', 'UNABLE', 'HOLDDONE', 'HOLDINAP', 'ADMINERROR', 'CLINMOD', '_PharmacySupplyEventAbortReason', 'CONTRA', 'FOABORT', 'FOSUSP', 'NOPICK', 'PATDEC', 'QUANTCHG', 'FLRSTCK', 'LTC', 'OFFICE', 'PHARM', 'PROG', 'ALREADYRX', 'FAMPHYS', 'MODIFY', 'NEEDAPMT', 'NOTAVAIL', 'NOTPAT', 'ONHOLD', 'PRNA', 'STOPMED', 'TOOEARLY', 'IMPROV', 'INTOL', 'NEWSTR', 'NEWTHER', 'CHGDATA', 'FIXDATA', 'MDATA', 'NEWDATA', 'UMDATA', 'ADMREV', 'PATCAR', 'PATREQ', 'PRCREV', 'REGUL', 'RSRCH', 'VALIDATION', '_PharmacySupplyRequestFulfillerRevisionRefusalReasonCode', 'LOCKED', 'UNKWNTARGET', 'BLK', 'DEC', 'FIN', 'MED', 'MTG', 'PHY', '_StatusRevisionRefusalReasonCode', 'FILLED', '_SubstanceAdministrationPermissionRefusalReasonCode', 'PATINELIG', 'PROTUNMET', 'PROVUNAUTH', 'ALGINT', 'COMPCON', 'THERCHAR', 'TRIAL', 'CT', 'FP', 'OS', 'RR', 'ER', 'RQ', 'BONUS', 'CHD', 'DEP', 'ECH', 'EDU', 'EMP', 'ESP', 'FAM', 'IND', 'INVOICE', 'PROA', 'RECOV', 'RETRO', 'SPC', 'SPO', 'TRAN']}, 'type'=>'CodeableConcept', 'path'=>'Communication.reason', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/v3-ActReason'}},
      'payload' => {'type'=>'Communication::Payload', 'path'=>'Communication.payload', 'min'=>0, 'max'=>Float::INFINITY},
      'note' => {'type'=>'Annotation', 'path'=>'Communication.note', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Payload < FHIR::Model
      MULTIPLE_TYPES = {
        'content' => ['string', 'Attachment', 'Reference']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Payload.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Payload.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Payload.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'contentString' => {'type'=>'string', 'path'=>'Payload.content[x]', 'min'=>1, 'max'=>1},
        'contentAttachment' => {'type'=>'Attachment', 'path'=>'Payload.content[x]', 'min'=>1, 'max'=>1},
        'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Payload.content[x]', 'min'=>1, 'max'=>1}
      }
    end
  end
end
