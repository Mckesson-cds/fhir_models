module FHIR
  class Endpoint < FHIR::Model
    SEARCH_PARAMS = ["identifier", "name", "organization", "payload-type", "status"]
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Endpoint.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Endpoint.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Endpoint.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'Endpoint.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Endpoint.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Endpoint.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Endpoint.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Endpoint.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'Endpoint.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/endpoint-status'=>['active', 'suspended', 'error', 'off', 'entered-in-error', 'active', 'suspended', 'error', 'off', 'entered-in-error']}, 'type'=>'code', 'path'=>'Endpoint.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/endpoint-status'}},
      'name' => {'type'=>'string', 'path'=>'Endpoint.name', 'min'=>0, 'max'=>1},
      'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Endpoint.managingOrganization', 'min'=>0, 'max'=>1},
      'contact' => {'type'=>'ContactPoint', 'path'=>'Endpoint.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'connectionType' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-channel-type'=>['rest-hook', 'websocket', 'email', 'sms', 'message', 'rest-hook', 'websocket', 'email', 'sms', 'message']}, 'type'=>'Coding', 'path'=>'Endpoint.connectionType', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-channel-type'}},
      'method' => {'local_name'=>'local_method', 'valid_codes'=>{'http://hl7.org/fhir/http-verb'=>['GET', 'POST', 'PUT', 'DELETE', 'GET', 'POST', 'PUT', 'DELETE']}, 'type'=>'Coding', 'path'=>'Endpoint.method', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/http-verb'}},
      'period' => {'type'=>'Period', 'path'=>'Endpoint.period', 'min'=>0, 'max'=>1},
      'address' => {'type'=>'uri', 'path'=>'Endpoint.address', 'min'=>1, 'max'=>1},
      'payloadFormat' => {'type'=>'string', 'path'=>'Endpoint.payloadFormat', 'min'=>1, 'max'=>1},
      'payloadType' => {'type'=>'CodeableConcept', 'path'=>'Endpoint.payloadType', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/endpoint-payload-type'}},
      'header' => {'type'=>'string', 'path'=>'Endpoint.header', 'min'=>0, 'max'=>Float::INFINITY},
      'publicKey' => {'type'=>'string', 'path'=>'Endpoint.publicKey', 'min'=>0, 'max'=>1}
    }
  end
end
