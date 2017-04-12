module FHIR
  # Exception which gets raised for failed FHIR requests
  class ClientException < StandardError
    attr_reader :client_reply
    delegate :body, :status, :resource, :success?, to: :client_reply

    def initialize(client_reply)
      @client_reply = client_reply
    end
  end
end
