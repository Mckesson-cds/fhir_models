module FHIR
  # Exception which gets raised for failed FHIR requests
  class ClientException < StandardError
    attr_reader :client_reply
    alias reply client_reply
    delegate :body, :status, :resource, :success?, to: :client_reply

    def initialize(client_reply)
      @client_reply = client_reply
    end

    def to_s
      request_env = client_reply.response.env
      # TODO: Should we include headers in this error message? They've been
      # omitted for now because they could include credentials, and all errors
      # have the potential to end up in logs, but there could be situations
      # where that would be helpful.
      <<~MSG
        FHIR transport failed with status #{status}
          #{request_env.method.to_s.upcase} #{request_env.url}
          #{body}
      MSG
    end
  end
end
