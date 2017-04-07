require 'spec_helper'

describe FHIR::Client do
  let(:iss) { 'http://fhir.example.com' }
  let(:example_json) { File.read('./spec/fixtures/json/patient-example.json') }
  let(:fhir_headers) do
    { 'Accept' => 'application/fhir+json' }
  end
  let(:example_patient_id) { '575577' }
  subject { FHIR::Client.new(iss) }

  context '#read' do
    it 'constructs a valid FHIR request with the ID' do
      stub_request(:get, "#{iss}/Patient/#{example_patient_id}")
        .with(headers: fhir_headers)
        .to_return(body: example_json)
      response = subject.read(FHIR::Patient, example_patient_id)

      expect(response).to be_a FHIR::ClientReply
      expect(response.response.status).to eq 200
      expect(response.resource).to be_a FHIR::Patient
      expect(response.client).to eq subject
    end

    context 'with invalid parameters' do
      it 'returns an exception object' do
        error_response = '{ "resourceType": "OperationOutcome", "issue": { "diagnostics": "Patient not found" } }'
        stub_request(:get, "#{iss}/Patient/#{example_patient_id}")
          .with(headers: fhir_headers)
          .to_return(status: 404, body: error_response)
        response = subject.read(FHIR::Patient, example_patient_id)

        expect(response).to be_a FHIR::ClientException
        expect(response.resource).to be_a FHIR::OperationOutcome
        expect(response.response.status).to eq 404
        expect(response.response.body).to eq error_response
      end
    end
  end

  context '#search' do
    let(:example_json) { File.read('./spec/fixtures/json/search-example.json') }

    context 'without parameters' do
      it 'constructs a valid FHIR request' do
        stub_request(:get, "#{iss}/Patient")
          .with(headers: fhir_headers)
          .to_return(body: example_json)
        response = subject.search(FHIR::Patient)

        expect(response).to be_a FHIR::ClientReply
        expect(response.response.status).to eq 200
        expect(response.resource).to be_a FHIR::Bundle
        expect(response.client).to eq subject
      end
    end

    context 'with params' do
      it 'constructs a valid FHIR request' do
        stub_request(:get, "#{iss}/Patient?name=John&_count=1")
          .with(headers: fhir_headers)
          .to_return(body: example_json)
        response = subject.search(FHIR::Patient, name: 'John', _count: 1)

        expect(response).to be_a FHIR::ClientReply
        expect(response.response.status).to eq 200
        expect(response.resource).to be_a FHIR::Bundle
        expect(response.client).to eq subject
      end
    end

    context 'with invalid parameters' do
      it 'returns an exception object' do
        error_response = '{ "resourceType": "OperationOutcome", "issue": { "diagnostics": "Unsupported resource type \'Patient\'" } }'
        stub_request(:get, "#{iss}/Patient")
          .with(headers: fhir_headers)
          .to_return(status: 400, body: error_response)
        response = subject.search(FHIR::Patient)

        expect(response).to be_a FHIR::ClientException
        expect(response.resource).to be_a FHIR::OperationOutcome
        expect(response.response.status).to eq 400
        expect(response.response.body).to eq error_response
      end
    end
  end

  context '#create' do
    context 'with valid content' do
      it 'returns a successful status code' do
        stub_request(:post, "#{iss}/Patient")
          .with(headers: fhir_headers)
          .to_return(status: 201, body: '')
        response = subject.create(FHIR::Patient, name: 'John')

        expect(response).to be_a FHIR::ClientReply
        expect(response.response.status).to eq 201
        expect(response.resource).to be_nil
        expect(response.client).to eq subject
      end

      it 'can parse a response from the server' do
        stub_request(:post, "#{iss}/Patient")
          .with(headers: fhir_headers)
          .to_return(status: 201, body: example_json)
        response = subject.create(FHIR::Patient, name: 'John')

        expect(response).to be_a FHIR::ClientReply
        expect(response.resource).to be_a FHIR::Patient
        expect(response.resource.id).to eq 'example'
      end
    end

    context 'with an invalid content' do
      it 'returns an exception object' do
        error_response = '{ "resourceType": "OperationOutcome", "issue": { "diagnostics": "Patient requires field \'name\' to be set." } }'
        stub_request(:post, "#{iss}/Patient")
          .with(headers: fhir_headers)
          .to_return(status: 500, body: error_response)
        response = subject.create(FHIR::Patient, {})

        expect(response).to be_a FHIR::ClientException
        expect(response.resource).to be_a FHIR::OperationOutcome
        expect(response.response.status).to eq 500
        expect(response.response.body).to eq error_response
      end
    end
  end

  context '#conditional_update' do
    context 'with valid content' do
      let(:resource_hash) do
        {
          name: [
            {
              family: ['Watson'],
              given: ['John']
            }
          ]
        }
      end

      context 'and valid search parameters' do
        it 'returns a successful status code' do
          stub_request(:put, "#{iss}/Patient?name=John")
            .with(headers: fhir_headers, body: resource_hash.to_json)
            .to_return(status: 200, body: '')

          response = subject.conditional_update(FHIR::Patient, resource_hash, name: 'John')

          expect(response).to be_a FHIR::ClientReply
          expect(response.response.code).to eq 200
          expect(response.resource).to be_nil
          expect(response.client).to eq subject
        end

        it 'can parse a response from the server' do
          stub_request(:put, "#{iss}/Patient?name=John")
            .with(headers: fhir_headers)
            .to_return(status: 200, body: example_json)

          response = subject.conditional_update(FHIR::Patient, resource_hash, name: 'John')

          expect(response).to be_a FHIR::ClientReply
          expect(response.resource).to be_a FHIR::Patient
          expect(response.resource.id).to eq 'example'
        end
      end

      context 'and invalid search parameters' do
        it 'returns an exception object' do
          error_response = '{ "resourceType": "OperationOutcome", "issue": { "diagnostics": "Multiple resources found" } }'
          stub_request(:put, "#{iss}/Patient?name=Fred")
            .with(headers: fhir_headers, body: resource_hash.to_json)
            .to_return(status: 412, body: error_response)
          response = subject.conditional_update(FHIR::Patient, resource_hash, name: 'Fred')

          expect(response).to be_a FHIR::ClientException
          expect(response.resource).to be_a FHIR::OperationOutcome
          expect(response.response.code).to eq 412
          expect(response.response.body).to eq error_response
        end
      end
    end

    context 'with invalid content' do
      it 'returns an exception object' do
        error_response = '{ "resourceType": "OperationOutcome", "issue": { "diagnostics": "Patient requires field \'name\' to be set." } }'
        stub_request(:put, "#{iss}/Patient?name=John")
          .with(headers: fhir_headers)
          .to_return(status: 400, body: error_response)

        response = subject.conditional_update(FHIR::Patient, {}, name: 'John')

        expect(response).to be_a FHIR::ClientException
        expect(response.resource).to be_a FHIR::OperationOutcome
        expect(response.response.code).to eq 400
        expect(response.response.body).to eq error_response
      end
    end
  end

  context 'mime type methods' do
    context '#use_json!' do
      let(:expected_header) { { 'Accept' => 'application/fhir+json' } }

      it 'sets the accept header' do
        subject.use_json!

        stub = stub_request(:get, "#{iss}/Patient/#{example_patient_id}")
          .with(headers: expected_header)
          .to_return(status: 200)

        subject.read(FHIR::Patient, example_patient_id)

        expect(stub).to have_been_requested
      end
    end

    context '#use_xml!' do
      let(:expected_header) { { 'Accept' => 'application/fhir+xml' } }

      it 'sets the accept header' do
        subject.use_xml!

        stub = stub_request(:get, "#{iss}/Patient/#{example_patient_id}")
          .with(headers: expected_header)
          .to_return(status: 200)

        subject.read(FHIR::Patient, example_patient_id)

        expect(stub).to have_been_requested
      end
    end

    context '#use_format_param' do
      context 'false' do
        let(:expected_header) { { 'Accept' => 'application/fhir+json' } }

        it 'uses the accept header without parameter' do
          stub = stub_request(:get, "#{iss}/Patient/#{example_patient_id}")
            .with(headers: expected_header)
          # The default is false
          subject.read(FHIR::Patient, example_patient_id)
          subject.use_format_param!(false)
          subject.read(FHIR::Patient, example_patient_id)

          expect(stub).to have_been_requested.twice
        end
      end

      context 'true' do
        let(:unexpected_header) { { 'Accept' => 'application/fhir+json' } }

        it 'removes the header and adds a query parameter' do
          stub_request(:get, "#{iss}/Patient/#{example_patient_id}?_format=json")

          # We need this AND the request stub because Webmock doesn't let you
          # check for headers with hash_excluding.
          expect(Faraday)
            .to receive(:get)
            .with("#{iss}/Patient/#{example_patient_id}?_format=json", nil, hash_excluding(unexpected_header))
            .twice
            .and_call_original

          subject.use_format_param!
          subject.read(FHIR::Patient, example_patient_id)
          subject.use_format_param!(true)
          subject.read(FHIR::Patient, example_patient_id)
        end
      end
    end

    context 'select_mime_type!', :focus do
      def unset_accept_type
        subject.instance_variable_set(:@accept_type, nil)
      end

      it 'sets the accept_type based on the given formats' do
        subject.select_mime_type!(['json'])
        expect(subject.accept_type).to eq :json

        subject.select_mime_type!(['xml'])
        expect(subject.accept_type).to eq :xml
      end

      it 'chooses the correct accept_type for MIME types' do
        subject.select_mime_type!(['application/fhir+json'])
        expect(subject.accept_type).to eq :json

        subject.select_mime_type!(['application/fhir+xml'])
        expect(subject.accept_type).to eq :xml

        subject.select_mime_type!(['application/json+fhir'])
        expect(subject.accept_type).to eq :json

        subject.select_mime_type!(['application/xml+fhir'])
        expect(subject.accept_type).to eq :xml
      end

      it 'chooses the correct accept_type for non-FHIR-specific MIME types' do
        subject.select_mime_type!(['application/json'])
        expect(subject.accept_type).to eq :json

        subject.select_mime_type!(['application/xml'])
        expect(subject.accept_type).to eq :xml
      end

      it 'handles weird capitalization' do
        subject.select_mime_type!(['APPLICATION/fhir+Xml'])
        expect(subject.accept_type).to eq :xml
      end

      it 'raises an exception for unsupported formats' do
        subject.use_xml!

        expect { subject.select_mime_type!(%w(foo bar)) }.to raise_error(FHIR::Client::NoSupportedFormat)
        expect(subject.accept_type).to eq :xml # accept_type should not have changed
      end

      context 'when multiple formats are passed' do
        it 'uses the first supported format' do
          unset_accept_type

          subject.select_mime_type!(%w(foo ttl text/html xml json))
          expect(subject.accept_type).to eq :xml
        end

        context 'when accept_type is already set' do
          it 'prefers the type that is already set' do
            subject.use_json!

            subject.select_mime_type!(%w(xml json))
            expect(subject.accept_type).to eq :json

            subject.use_xml!
            subject.select_mime_type!(%w(application/fhir+json xml))
            expect(subject.accept_type).to eq :xml
          end
        end
      end
    end
  end

  context '#capability_statement' do
    let(:example_json) do
      {
        resourceType: resource_type,
        fhirVersion: fhir_version.to_s,
        format: accepted_formats
      }.to_json
    end

    context 'FHIR >= 1.8' do
      let(:resource_type) { 'CapabilityStatement' }
      let(:fhir_version) { 1.8 }
      let(:accepted_formats) { ['application/fhir+xml'] }

      it 'returns a valid capability statement' do
        stub_request(:get, "#{iss}/metadata")
          .to_return(body: example_json)
        expect(subject.capability_statement).to be_a FHIR::CapabilityStatement
        expect(subject.fhir_version).to eq fhir_version
        expect(subject.accept_type).to eq :xml
      end
    end

    context 'FHIR < 1.8' do
      let(:resource_type) { 'Conformance' }
      let(:fhir_version) { 1.6 }
      let(:accepted_formats) { ['application/xml+fhir'] }

      # TODO: Implement when multiple FHIR Versions are supported!
      it 'returns a valid conformance statement'
    end
  end

  context 'auth type methods' do
    context '#use_no_auth!' do
      before do
        # No auth is the default, switch to something else first
        subject.use_basic_auth!('abc', '123')
        subject.use_no_auth!
      end

      it 'does not use auth for requests' do
        stub = stub_request(:get, "#{iss}/Patient/#{example_patient_id}")
          .with(headers: fhir_headers)
          .to_return(body: example_json)

        response = subject.read(FHIR::Patient, example_patient_id)
        expect(stub).to have_been_requested
        expect(response.response.env.request_headers.keys).not_to include 'Authorization'
      end
    end

    context '#use_basic_auth!' do
      # Username and password long enough for regular Base64.encode64 to insert newlines
      let(:username) { 'an_excessively_long_username' }
      let(:password) { 'an_extremely_long_password' }
      let(:expected_token) { Base64.strict_encode64("#{username}:#{password}") }
      let(:expected_headers) { fhir_headers.merge('Authorization' => "Basic #{expected_token}") }

      before do
        subject.use_basic_auth!(username, password)
      end

      it 'uses HTTP Basic Authentication' do
        stub = stub_request(:get, "#{iss}/Patient/#{example_patient_id}")
          .with(headers: expected_headers)
          .to_return(body: example_json)

        response = subject.read(FHIR::Patient, example_patient_id)
        expect(stub).to have_been_requested
      end
    end

    context '#use_bearer_token!' do
      let(:token) { Base64.strict_encode64('abc123') }
      let(:expected_headers) { fhir_headers.merge('Authorization' => "Bearer #{token}") }

      before do
        subject.use_bearer_token!(token)
      end

      it 'sets the Authorization header for a bearer token' do
        stub = stub_request(:get, "#{iss}/Patient/#{example_patient_id}")
          .with(headers: expected_headers)
          .to_return(body: example_json)

        response = subject.read(FHIR::Patient, example_patient_id)
        expect(stub).to have_been_requested
      end
    end

    context '#use_oauth2_auth!' do
      let(:client_id) { 'abc' }
      let(:client_secret) { '123' }
      let(:authorize_url) { 'http://fhir.example.com/oauth/authorize' }
      let(:token_url) { 'http://fhir.example.com/oauth/token' }
      let(:expected_headers) { fhir_headers.merge('Authorization' => "Bearer #{token}") }
      let(:token) { 'ABC456' }

      before do
        stub_request(:post, token_url)
          .with(body: { client_id: client_id, client_secret: client_secret, grant_type: 'client_credentials' })
          .to_return(
            body: { access_token: token, token_type: 'bearer', expires_in: 2592000, refresh_token: 'REFRESH_TOKEN', scope: 'read' }.to_json,
            headers: { 'Content-Type' => 'application/json' }
          )

        subject.use_oauth2_auth!(client_id, client_secret, authorize_url, token_url)
      end

      it 'sets the Authorization header for a bearer token' do
        stub = stub_request(:get, "#{iss}/Patient/#{example_patient_id}")
          .with(headers: expected_headers)
          .to_return(body: example_json)

        response = subject.read(FHIR::Patient, example_patient_id)
        expect(stub).to have_been_requested
      end
    end
  end
end

# FHIR::Client#get(resource_class, params)
# FHIR::Client#post(resource_class, params)
# FHIR::Client#put(resource_class, params)
# FHIR::Client#patch(resource_class, params)
# FHIR::Client#delete(resource_class, params)
