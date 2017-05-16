describe FHIR::Bundle do
  context '#as_json' do
    # FHIR::Bundle includes Enumerable, which defines as_json to return an array
    it 'does not return an array' do
      bundle = FHIR::Bundle.new
      json = bundle.as_json
      expect(json).to be_a Hash
    end
  end

  context '#each' do
    specify 'iterates over the resource entries'
  end

  context '#next_bundle' do
    specify 'returns bundle retrieved from embedded next link'
  end
end
