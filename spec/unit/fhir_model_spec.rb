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

  context 'reading attributes' do
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
          ],
          'deceasedBoolean' => false
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

    context 'for attributes not included in the data' do
      it 'returns nil for non-array attributes' do
        # TODO: Should this return appropriate empty values for primitive types?
        expect(resource.text).to eq nil
      end

      it 'returns an empty array for array attributes' do
        expect(resource.telecom).to be_an Array
        expect(resource.telecom.size).to eq 0
      end
    end

    context 'polymorphic types' do
      it 'works with type-specific names' do
        expect(resource.deceasedBoolean).to eq false
      end

      it 'works with generic-type names' do
        expect(resource.deceased).to eq false
      end

      it 'uses the correct type after an attribute is set' do
        expect(resource.deceased).to eq false
        resource.deceasedDateTime = '2017-05-15T12:00:00Z'
        expect(resource.deceased).to eq '2017-05-15T12:00:00Z'
      end
    end

    context 'attributes not defined by FHIR' do
      let(:resource) do
        FHIR::Model.new(
          {
            'resourceType' => 'Patient',
            'foo' => [
              {
                'bar' => 'baz'
              }
            ]
          }
        )
      end

      it 'converts them to FHIR::Model instances' do
        expect(resource.foo).to be_an Array
        expect(resource.foo.first).to be_a FHIR::Model
        expect(resource.foo.first.bar).to eq 'baz'
      end
    end

    context 'attributes with local_name overrides' do
      let(:resource) do
        FHIR::Encounter.new({
          status: 'arrived',
          class: {
            system: 'http://hl7.org/fhir/ValueSet/v3-ActEncounterCode',
            code: 'AMB'
          }
        })
      end

      it 'can be read by its local_name' do
        expect(resource.local_class.code).to eq 'AMB'
      end

      it 'can be written by its local_name' do
        resource.local_class = FHIR::Coding.new({
          system: 'http://hl7.org/fhir/ValueSet/v3-ActEncounterCode',
          code: 'EMER'
        })

        expect(resource.local_class.code).to eq 'EMER'
      end
    end
  end

  context 'writing attributes' do
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
          ],
          'deceasedBoolean' => false
        }
      )
    end

    it 'writes a simple attribute' do
      resource.active = true

      expect(resource.active).to eq true
    end

    it 'writes a FHIR::Model attribute' do
      resource.animal = FHIR::Patient::Animal.new(
        {
          species: {
            code: '47290002',
            display: 'chicken'
          }
        }
      )

      expect(resource.animal.species.code).to eq '47290002'
    end

    it 'writes a polymorphic attribute' do
      skip 'The original FHIR models does not allow `deceased=`'
      resource.deceased = '2017-05-15T19:29:00Z'
      expect(resource.deceasedBoolean).to eq nil
      expect(resource.deceasedDateTime).to eq '2017-05-15T19:29:00Z'
      expect(resource.deceased).to eq '2017-05-15T19:29:00Z'
    end

    it 'writes a polymorphic attribute via the type-specific method' do
      resource.deceasedDateTime = '2017-05-12T05:00:00Z'

      expect(resource.deceasedDateTime).to eq '2017-05-12T05:00:00Z'
      expect(resource.deceasedBoolean).to eq nil
      expect(resource.deceased).to eq '2017-05-12T05:00:00Z'
    end

    it 'writes an attribute on a backbone element' do
      resource.contact.first.address.line = ['512 GB SSD']

      expect(resource.contact.first.address.line).to eq ['512 GB SSD']
    end
  end

  %w(Patient Resource).each do |model_name|
    describe FHIR.const_get(model_name) do
      it_behaves_like 'a FHIR Model', model_name
    end
  end
end
