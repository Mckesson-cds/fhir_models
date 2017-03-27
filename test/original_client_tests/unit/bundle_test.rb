require_relative '../../test_helper'

class BundleTest < Test::Unit::TestCase
  def test_example_bundle
    pend 'Client shouldn\'t really know about "parse_reply".'
    client = FHIR::Client.new('feed-test')
    root = File.expand_path '..', File.dirname(File.absolute_path(__FILE__))
    bundle_xml = File.read(File.join(root, 'fixtures', 'bundle-example.xml'))
    response = {
      code: '200',
      headers: {},
      body: bundle_xml
    }
    clientReply = FHIR::ClientReply.new('feed-test', response)

    bundle = client.parse_reply(FHIR::Bundle, FHIR::Formats::ResourceFormat::RESOURCE_XML, clientReply)

    assert !bundle.nil?, 'Failed to parse example Bundle.'
  end
end
