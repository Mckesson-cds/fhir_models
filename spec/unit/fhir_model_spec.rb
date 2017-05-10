require 'pry'

shared_context 'a FHIR Model' do |model_name|
  let(:expected_hash) { { id: '123' } }
  let(:hash_with_resource_type) { expected_hash.merge(resourceType: model_name) }
  let(:fhir_object) { described_class.new(expected_hash) }

  let(:expected_json) { hash_with_resource_type.to_json }
  let(:expected_xml) { hash_with_resource_type.to_xml }

  context '.new' do
    it 'instantiates the current class' do
      expect(described_class.new(expected_hash)).to be_a described_class
    end

    it 'instantiates another class when passed resourceType' do
      expect(described_class.new(expected_hash.merge('resourceType' => 'Patient'))).to be_a FHIR::Patient
    end
  end

  context '#resourceType' do
    it 'returns the demodulized class name' do
      expect(described_class.new.resourceType).to eq model_name
    end
  end

  context 'to_fhir' do
    context 'json' do
      it 'returns a JSON representation of a FHIR Model' do
        expect(fhir_object.to_fhir).to eq expected_json
        expect(fhir_object.to_fhir_json).to eq expected_json
        expect(fhir_object.to_fhir(format: :json)).to eq expected_json
      end

      it 'allows passing in a FHIR Version context'

      it 'allows passing in a FHIR Profile context'
    end

    context 'xml', :skip do
      it 'returns an XML representation of a FHIR Model'

      it 'allows passing in a FHIR Version context'

      it 'allows passing in a FHIR Profile context'
    end
  end

  context 'from_fhir' do
    context 'json' do
      it 'parses JSON into a FHIR Model' do
        model = described_class.from_fhir(expected_json)
        expect(model).to eq fhir_object
        expect(model.id).to eq expected_hash[:id]
      end

      it 'allows passing in nested FHIR Models' do
        json = expected_hash.merge('nested' => { 'resourceType' => 'Patient' }).to_json
        result = described_class.from_fhir(json)
        expect(result).to be_a(described_class)
        expect(result.nested).to be_a FHIR::Patient
      end

      it 'allows passing in nested arrays' do
        json = expected_hash.merge('nested' => [{ 'resourceType' => 'Patient' }, 'primitive']).to_json
        result = described_class.from_fhir(json)
        expect(result.nested.first).to be_a FHIR::Patient
        expect(result.nested.second).to eq 'primitive'
      end

      it 'allows passing in a FHIR Version context'

      it 'allows passing in a FHIR Profile context'
    end

    context 'xml', :skip do
      it 'parses XML into a FHIR Model' do
        expect(fhir_object.to_fhir_xml).to eq expected_xml
        expect(fhir_object.to_fhir(format: :xml)).to eq expected_xml
      end

      it 'allows passing in a FHIR Version context'

      it 'allows passing in a FHIR Profile context'
    end
  end
end

describe FHIR::Model do
  context '.new' do
    it 'cannot be instantiated' do
      # expect { FHIR::Model.new }.to raise_error(NotImplementedError)
    end

    it 'returns a subclass of resourceType' do
      expect(FHIR::Model.new('resourceType' => 'Patient')).to be_a FHIR::Patient
    end
  end

  context 'accessing attributes' do
    let(:resource) do
      FHIR::Model.new(
        {
          'resourceType' => 'Patient',
          'contact' => [
            {
              'address' => {
                'line' => ['256 GB Hard Dr']
              }
            }
          ],
          'name' => [
            {
              'given' => ['Fred']
            }
          ]
        }
      )
    end

    it 'returns properly-typed attributes' do
      expect(resource).to be_a FHIR::Patient
      expect(resource.contact.first).to be_a FHIR::Patient::Contact
      expect(resource.contact.first.address).to be_a FHIR::Address
      expect(resource.name.size).to eq 1
      expect(resource.name.first).to be_a FHIR::HumanName
    end

    context 'polymorphic types' do
    end

    context 'attributes not defined by FHIR' do
    end

    # TODO: Figure out how to handle local_name overrides
    context 'attributes with local_name overrides' do
    end

    context 'when an array attribute is not present' do
      it 'returns an empty array' do
        expect(resource.telecom).to be_an Array
        expect(resource.telecom.size).to eq 0
      end
    end
  end

  %w(Patient Resource).each do |model_name|
    describe FHIR.const_get(model_name) do
      it_behaves_like 'a FHIR Model', model_name
    end
  end
end
