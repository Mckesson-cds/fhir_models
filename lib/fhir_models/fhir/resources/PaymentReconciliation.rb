module FHIR
  class PaymentReconciliation < FHIR::Model
    MULTIPLE_TYPES = {
      'request' => ['Identifier', 'Reference'],
      'organization' => ['Identifier', 'Reference'],
      'requestProvider' => ['Identifier', 'Reference'],
      'requestOrganization' => ['Identifier', 'Reference']
    }
    SEARCH_PARAMS = ["created", "disposition", "identifier", "organization-identifier", "organization-reference", "outcome", "request-identifier", "request-organization-identifier", "request-organization-reference", "request-provider-identifier", "request-provider-reference", "request-reference"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'PaymentReconciliation.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'PaymentReconciliation.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'PaymentReconciliation.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'PaymentReconciliation.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'PaymentReconciliation.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'PaymentReconciliation.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'PaymentReconciliation.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'PaymentReconciliation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'PaymentReconciliation.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/paymentreconciliation-status'=>['active', 'cancelled', 'draft', 'entered-in-error', 'active', 'cancelled', 'draft', 'entered-in-error']}, 'type'=>'code', 'path'=>'PaymentReconciliation.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/paymentreconciliation-status'}},
      'requestIdentifier' => {'type'=>'Identifier', 'path'=>'PaymentReconciliation.request[x]', 'min'=>0, 'max'=>1},
      'requestReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ProcessRequest'], 'type'=>'Reference', 'path'=>'PaymentReconciliation.request[x]', 'min'=>0, 'max'=>1},
      'outcome' => {'valid_codes'=>{'http://hl7.org/fhir/remittance-outcome'=>['complete', 'error', 'partial', 'complete', 'error', 'partial']}, 'type'=>'code', 'path'=>'PaymentReconciliation.outcome', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/remittance-outcome'}},
      'disposition' => {'type'=>'string', 'path'=>'PaymentReconciliation.disposition', 'min'=>0, 'max'=>1},
      'ruleset' => {'valid_codes'=>{'http://hl7.org/fhir/ruleset'=>['x12-4010', 'x12-5010', 'x12-7010', 'cdanet-v2', 'cdanet-v4', 'cpha-3', 'x12-4010', 'x12-5010', 'x12-7010', 'cdanet-v2', 'cdanet-v4', 'cpha-3']}, 'type'=>'Coding', 'path'=>'PaymentReconciliation.ruleset', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ruleset'}},
      'originalRuleset' => {'valid_codes'=>{'http://hl7.org/fhir/ruleset'=>['x12-4010', 'x12-5010', 'x12-7010', 'cdanet-v2', 'cdanet-v4', 'cpha-3', 'x12-4010', 'x12-5010', 'x12-7010', 'cdanet-v2', 'cdanet-v4', 'cpha-3']}, 'type'=>'Coding', 'path'=>'PaymentReconciliation.originalRuleset', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ruleset'}},
      'created' => {'type'=>'dateTime', 'path'=>'PaymentReconciliation.created', 'min'=>0, 'max'=>1},
      'period' => {'type'=>'Period', 'path'=>'PaymentReconciliation.period', 'min'=>0, 'max'=>1},
      'organizationIdentifier' => {'type'=>'Identifier', 'path'=>'PaymentReconciliation.organization[x]', 'min'=>0, 'max'=>1},
      'organizationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'PaymentReconciliation.organization[x]', 'min'=>0, 'max'=>1},
      'requestProviderIdentifier' => {'type'=>'Identifier', 'path'=>'PaymentReconciliation.requestProvider[x]', 'min'=>0, 'max'=>1},
      'requestProviderReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner'], 'type'=>'Reference', 'path'=>'PaymentReconciliation.requestProvider[x]', 'min'=>0, 'max'=>1},
      'requestOrganizationIdentifier' => {'type'=>'Identifier', 'path'=>'PaymentReconciliation.requestOrganization[x]', 'min'=>0, 'max'=>1},
      'requestOrganizationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'PaymentReconciliation.requestOrganization[x]', 'min'=>0, 'max'=>1},
      'detail' => {'type'=>'PaymentReconciliation::Detail', 'path'=>'PaymentReconciliation.detail', 'min'=>0, 'max'=>Float::INFINITY},
      'form' => {'valid_codes'=>{'http://hl7.org/fhir/forms-codes'=>['1', '2', '1', '2']}, 'type'=>'Coding', 'path'=>'PaymentReconciliation.form', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/forms'}},
      'total' => {'type'=>'Money', 'path'=>'PaymentReconciliation.total', 'min'=>1, 'max'=>1},
      'note' => {'type'=>'PaymentReconciliation::Note', 'path'=>'PaymentReconciliation.note', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Detail < FHIR::Model
      MULTIPLE_TYPES = {
        'request' => ['Identifier', 'Reference'],
        'response' => ['Identifier', 'Reference'],
        'submitter' => ['Identifier', 'Reference'],
        'payee' => ['Identifier', 'Reference']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Detail.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Detail.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Detail.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/payment-type'=>['payment', 'adjustment', 'advance', 'payment', 'adjustment', 'advance']}, 'type'=>'Coding', 'path'=>'Detail.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/payment-type'}},
        'requestIdentifier' => {'type'=>'Identifier', 'path'=>'Detail.request[x]', 'min'=>0, 'max'=>1},
        'requestReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Detail.request[x]', 'min'=>0, 'max'=>1},
        'responseIdentifier' => {'type'=>'Identifier', 'path'=>'Detail.response[x]', 'min'=>0, 'max'=>1},
        'responseReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Detail.response[x]', 'min'=>0, 'max'=>1},
        'submitterIdentifier' => {'type'=>'Identifier', 'path'=>'Detail.submitter[x]', 'min'=>0, 'max'=>1},
        'submitterReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Detail.submitter[x]', 'min'=>0, 'max'=>1},
        'payeeIdentifier' => {'type'=>'Identifier', 'path'=>'Detail.payee[x]', 'min'=>0, 'max'=>1},
        'payeeReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Detail.payee[x]', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'date', 'path'=>'Detail.date', 'min'=>0, 'max'=>1},
        'amount' => {'type'=>'Money', 'path'=>'Detail.amount', 'min'=>0, 'max'=>1}
      }
    end

    class Note < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Note.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Note.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Note.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/note-type'=>['display', 'print', 'printoper', 'display', 'print', 'printoper']}, 'type'=>'Coding', 'path'=>'Note.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/note-type'}},
        'text' => {'type'=>'string', 'path'=>'Note.text', 'min'=>0, 'max'=>1}
      }
    end
  end
end
