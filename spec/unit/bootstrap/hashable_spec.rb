describe FHIR::Hashable do
  include FHIR::Hashable

  let(:test_class) { described_class }

  context '#from_hash'

  context '#to_hash'

  context '#make_child'

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
        %w(date dateTime code string oid uri uuid instant
           base64Binary markdown time id xhtml).each do |primitive_type|
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
