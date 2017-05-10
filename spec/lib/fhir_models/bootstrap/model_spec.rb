RSpec.describe 'FHIR::Model' do
  describe '#primitive?(datatype, value)', :skip do
    subject { FHIR::Patient.new({}) }

    describe "datatype 'integer'" do
      let(:datatype) { 'integer' }

      context 'returns true when' do
        let(:result) { true }
        specify 'value= 0' do
          expect(subject.primitive?(datatype, 0)).to be result
        end
        specify 'value= -1' do
          expect(subject.primitive?(datatype, -1)).to be result
        end
        specify 'value= 1' do
          expect(subject.primitive?(datatype, 1)).to be result
        end
        specify "value= '0'" do
          expect(subject.primitive?(datatype, '0')).to be result
        end
        specify "value= '-1'" do
          expect(subject.primitive?(datatype, '-1')).to be result
        end
        specify "value= '1'" do
          expect(subject.primitive?(datatype, '1')).to be result
        end
      end

      context 'returns false when' do
        let(:result) { false }
        specify "value= '1.0'" do
          expect(subject.primitive?(datatype, '1.0')).to be result
        end
        specify "value= '+1'" do
          pending('+1 does not match the specification regex for FHIR <= 1.8.0, but is a valid ruby integer')
          expect(subject.primitive?(datatype, '+1')).to be result
        end
        specify "value= 'non-numeric-string'" do
          expect(subject.primitive?(datatype, 'non-numeric-string')).to be result
        end
        specify "value= 'string with trailing 123'" do
          expect(subject.primitive?(datatype, 'string with trailing 123')).to be result
        end
        specify "value= '123 string with leading number'" do
          expect(subject.primitive?(datatype, '123 string with leading number')).to be result
        end
        specify 'value= nil' do
          expect(subject.primitive?(datatype, nil)).to be result
        end
        specify "value= '1.5'" do
          expect(subject.primitive?(datatype, '1.5')).to be result
        end
        specify 'value= 1.5' do
          expect(subject.primitive?(datatype, 1.5)).to be result
        end
      end
    end
  end

  describe '#hash' do
    it 'should be the same for two identical fhir models' do
      attributes = {
        name: [
          family: [ 'Smith' ]
        ]
      }
      patient1 = FHIR::Patient.new(attributes)
      patient2 = FHIR::Patient.new(attributes)
      expect(patient1.hash).to eq patient2.hash
    end

    it 'should be different for two models that do not have the same attributes' do
      attributes1 = {
        name: [
          family: [ 'Smith' ]
        ]
      }
      attributes2 = {
        name: [
          family: [ 'Jones' ]
        ]
      }
      patient1 = FHIR::Patient.new(attributes1)
      patient2 = FHIR::Patient.new(attributes2)
      expect(patient1.hash).not_to eq patient2.hash
    end
  end

  describe '#== (alias: eql?)' do
    it 'should be true for two identical fhir models' do
      attributes = {
        name: [
          family: [ 'Smith' ]
        ]
      }
      patient1 = FHIR::Patient.new(attributes)
      patient2 = FHIR::Patient.new(attributes)
      expect(patient1).to eq patient2
      expect(patient1).to eql patient2
    end

    it 'should false for two models that do not have the same attributes' do
      attributes1 = {
        name: [
          family: [ 'Smith' ]
        ]
      }
      attributes2 = {
        name: [
          family: [ 'Jones' ]
        ]
      }
      patient1 = FHIR::Patient.new(attributes1)
      patient2 = FHIR::Patient.new(attributes2)
      expect(patient1).not_to eq patient2
      expect(patient1).not_to eql patient2
    end
  end
end
