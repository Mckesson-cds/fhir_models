require 'spec_helper'

shared_examples 'a fhir response container' do
  context '.body' do
    it 'returns the response body' do
      expect(subject.body).to eq(example_json)
    end
  end

  context '.status' do
    it 'returns the response status code' do
      expect(subject.status).to eq expected_response_code
    end
  end
end

describe FHIR::ClientReply do
  let(:example_json) { File.read('./spec/fixtures/json/patient-example.json') }
  let(:iss) { 'http://fhir.example.com' }
  let(:expected_response_code) { 200 }
  let(:client) { nil }
  let(:response) do
    stub_request(:get, iss).to_return(body: example_json, status: expected_response_code)
    Faraday.get(iss)
  end

  subject { FHIR::ClientReply.new(response: response, client: client) }

  it_behaves_like 'a fhir response container'

  context '.resource' do
    context 'read' do
      it 'returns a single FHIR resource' do
        expect(subject.resource).to be_a FHIR::Patient
      end
    end

    context 'search' do
      let(:example_json) { File.read('./spec/fixtures/json/search-example.json') }

      it 'returns a FHIR bundle' do
        expect(subject.resource).to be_a FHIR::Bundle
      end
    end

    context 'with a client' do
      let(:client) { FHIR::Client.new(iss) }

      context 'read' do
        it 'returns a single FHIR resource with client set' do
          expect(subject.resource).to be_a FHIR::Patient
          expect(subject.resource.client).to eq client
        end
      end

      context 'search' do
        let(:example_json) { File.read('./spec/fixtures/json/search-example.json') }

        it 'returns a FHIR bundle with client set' do
          expect(subject.resource).to be_a FHIR::Bundle
          expect(subject.resource.client).to eq client
        end
      end
    end

    context 'with an empty response body' do
      let(:example_json) { '' }

      it 'returns nothing' do
        expect(subject.resource).to be_blank
      end
    end
  end

  context '.success?' do
    it 'returns true' do
      expect(subject.code).to eq expected_response_code
      expect(subject.success?).to eq true
    end
  end
end

describe FHIR::ClientException do
  let(:example_json) { '{ "resourceType": "OperationOutcome" }' }
  let(:iss) { 'http://fhir.example.com' }
  let(:expected_response_code) { 404 }
  let(:response) do
    stub_request(:get, iss).to_return(body: example_json, status: expected_response_code)
    Faraday.get(iss)
  end
  let(:client_reply) do
    FHIR::ClientReply.new(
      response: response
    )
  end

  subject { FHIR::ClientException.new(client_reply) }

  it_behaves_like 'a fhir response container'

  context '.resource' do
    context 'with OperationOutcome body' do
      it 'returns an OperationOutcome object' do
        expect(subject.resource).to be_a FHIR::OperationOutcome
      end
    end

    context 'with no body' do
      let(:example_json) { '' }

      it 'returns no resource' do
        expect(subject.resource).to eq nil
      end
    end
  end

  context '.success?' do
    it 'returns false' do
      expect(subject.status).to eq expected_response_code
      expect(subject.success?).to eq false
    end
  end

  context '#to_s' do
    it 'returns a descriptive error message' do
      message = subject.to_s
      expect(message).to match('status 404')
      expect(message).to match("GET #{iss}")
      expect(message).to match(example_json)
    end
  end
end
