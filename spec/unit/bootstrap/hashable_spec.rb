require 'pry'

describe FHIR::Hashable do
  include FHIR::Hashable

  context '#to_hash'

  context '#from_hash' do
    let(:test_class) do
      Class.new do |klass|
        include FHIR::Hashable

        klass::METADATA = {
          'boolean_field' => { 'type' => 'boolean', 'max' => 1 },
          'multi_boolean_field' => { 'type' => 'boolean', 'max' => 2 },
          'invalid_primitive' => { 'type' => 'invalidInt' },
          'subject' => { 'type' => 'Resource' },
          'entry' => { 'type' => 'Bundle::Entry', 'max' => 2 }
        }.freeze

        attr_accessor(*klass::METADATA.keys)
      end
    end
    # Is this what we want our use-case to be...?
    let(:test_object) { test_class.new }

    context 'key which does not exist in metadata' do
      it 'does not assign a value' do
        expect(test_object)
          .to receive(:instance_variable_set)
          .with('non_existent', true)
          .exactly(0).times
        test_object.from_hash('non_existent' => 'true')
      end
    end

    context 'primitive values' do
      it 'sets the value' do
        expect { test_object.from_hash('boolean_field' => 'true') }
          .to change { test_object.boolean_field }
          .from(nil).to(true)
      end

      it 'sets multiple values' do
        expect { test_object.from_hash('multi_boolean_field' => %w(true false)) }
          .to change { test_object.multi_boolean_field }
          .from(nil).to([true, false])
      end

      it 'sets a single value to an Array when max > 1' do
        expect { test_object.from_hash('multi_boolean_field' => 'true') }
          .to change { test_object.multi_boolean_field }
          .from(nil).to([true])
      end
    end

    context 'invalid primitive type' do
      it 'logs an error' do
        expect(FHIR.logger).to receive(:error)
        test_object.from_hash('invalid_primitive' => '123')
      end
    end

    context 'FHIR resources' do
      before do
        # Tested elsewhere... preventing unnecessary work.
        allow_any_instance_of(FHIR::Resource).to receive(:from_hash)
      end

      context 'represented as a hash' do
        it 'returns a new object' do
          entry_hash = { 'id' => '123', 'resourceType' => 'Resource' }
          test_object.from_hash('entry' => entry_hash)

          expect(test_object.entry.count).to eq 1
          expect(test_object.entry.first).to be_a(FHIR::Resource)
        end
      end

      context 'represented as an object' do
        it 'throws an error' do
          # This should probably change. Also, relies on #make_child changes.
          expect { test_object.from_hash('entry' => FHIR::Resource.new('id' => '123')) }
            .to raise_error(NoMethodError, /^undefined method `\[\]\'/)
        end
      end

      context 'multiple resources' do
        it 'handles non-FHIR classes' do
          entries = [{ 'id' => '123', 'resourceType' => 'Resource' }]
          test_object.from_hash('entry' => entries)

          expect(test_object.entry.count).to eq 1
          expect(test_object.entry.first).to be_a(FHIR::Resource)
        end

        it 'handles FHIR Types' do
          allow_any_instance_of(FHIR::Reference).to receive(:from_hash)

          entry = FHIR::Reference.new('id' => '123')
          test_object.from_hash('entry' => [entry])

          expect(test_object).to receive(:make_child).exactly(0).times

          expect(test_object.entry.count).to eq 1
          expect(test_object.entry.first).to be_a(FHIR::Reference)
        end

        it 'handles FHIR Resources' do
          entry = FHIR::Resource.new('id' => '123')
          test_object.from_hash('entry' => [entry])

          expect(test_object).to receive(:make_child).exactly(0).times

          expect(test_object.entry.count).to eq 1
          expect(test_object.entry.first).to be_a(FHIR::Resource)
        end
      end
    end
  end

  context '#make_child' do
    context 'child hash' do
      before do
        # Tested elsewhere... preventing unnecessary work.
        allow_any_instance_of(FHIR::Resource).to receive(:from_hash)
      end

      context 'without resourceType' do
        let(:child_hash) { { 'id' => '123' } }

        it 'uses the class passed in' do
          expect(make_child(child_hash, FHIR::Resource)).to be_a(FHIR::Resource)
        end

        it 'cannot be called with an invalid class' do
          expect { make_child(child_hash, NonExistentClass) }.to raise_error(NameError)
        end
      end

      context 'with resourceType and class' do
        let(:child_hash) { { 'resourceType' => 'Resource' } }

        context 'valid resourceType and class' do
          it 'uses the class passed as resourceType' do
            # Example: If klass is 'FHIR::Bundle::Entry' from the metadata type,
            # we want to use the resourceType if we have it, as it will be more
            # descriptive of the correct object.
            expect(make_child(child_hash, FHIR::Bundle::Entry)).to be_a(FHIR::Resource)
          end
        end

        context 'invalid resourceType, valid class' do
          it 'returns nil' do
            # Is this expected behavior?
            expect(FHIR.logger).to receive(:error)
            expect(make_child({ 'resourceType' => 'NonExistentClass' }, FHIR::Bundle::Entry)).to eq nil # be_a(FHIR::Bundle::Entry)
          end
        end

        it 'cannot be called with an invalid class' do
          expect { make_child(child_hash, NonExistentClass) }.to raise_error(NameError)
        end
      end

      context 'with resourceType, without class' do
        let(:child_hash) { { 'resourceType' => 'Resource' } }

        it 'infers the class from the hash' do
          expect(make_child(child_hash, nil)).to be_a(FHIR::Resource)
        end

        it 'logs an error with an improper class' do
          expect(FHIR.logger).to receive(:error)
          expect(make_child({ 'resourceType' => 'NonExistentClass' }, nil)).to be nil
        end
      end
    end

    context 'child object'
  end

  context '#convert_primitive' do
    context 'non-string value' do
      it 'always returns the provided value' do
        expect(convert_primitive(true, nil)).to eq true
        expect(convert_primitive(false, nil)).to eq false
        expect(convert_primitive(123, nil)).to eq 123
        expect(convert_primitive({}, nil)).to eq({})
        expect(convert_primitive([], nil)).to eq []
      end
    end

    context 'boolean' do
      let(:metadata) { { 'type' => 'boolean' } }

      it 'returns true or false' do
        expect(convert_primitive('true', metadata)).to eq true
        expect(convert_primitive('false', metadata)).to eq false
      end
    end

    context 'boolean' do
      let(:metadata) { { 'type' => 'boolean' } }

      it 'returns true or false' do
        expect(convert_primitive('true', metadata)).to eq true
        expect(convert_primitive('false', metadata)).to eq false
      end
    end

    context 'FHIR Primitives' do
      context 'numeric types' do
        %w(decimal integer positiveInt unsignedInt).each do |primitive_type|
          let(:metadata) { { 'type' => primitive_type } }

          it 'converts value to a number' do
            # Some of these might be unexpected... Integer having a decimal?
            expect(convert_primitive('123', metadata)).to eq 123
            expect(convert_primitive('123.5', metadata)).to eq 123.5
            expect(convert_primitive('+123.5', metadata)).to eq 123.5
            expect(convert_primitive('-123.5', metadata)).to eq(-123.5)
          end
        end
      end

      context 'type = string' do
        %w(date dateTime code string oid uri uuid instant base64Binary markdown
           time id xhtml).each do |primitive_type|
          let(:metadata) { { 'type' => primitive_type } }

          it 'returns the original value' do
            # Some of these don't feel good...
            expect(convert_primitive('123', metadata)).to eq '123'
            expect(convert_primitive('http://example.com', metadata)).to eq 'http://example.com'
            expect(convert_primitive('01-01-2017', metadata)).to eq '01-01-2017'
          end
        end
      end
    end
  end
end
