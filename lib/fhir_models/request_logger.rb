module FHIR
  # Faraday middleware to log requests
  class RequestLogger
    attr_reader :app, :logger, :tags

    def initialize(app, logger, tags)
      @app = app
      @logger = logger
      @tags = tags
    end

    def call(request_env)
      request_method = request_env.method
      request_url = request_env.url
      request_body = request_env.body
      request_headers = request_env.request_headers

      app.call(request_env).on_complete do |response_env|
        logger.info { tagged("#{request_method.upcase} - #{response_env.status} - #{request_url}") }
        logger.debug { tagged(request_body) }

        if response_env.success?
          logger.debug { tagged(request_headers) }

          logger.info { tagged(response_env[:response_headers]) }
          logger.debug { tagged(response_env[:body]) }
        else
          logger.error { tagged(request_headers) }

          logger.error { tagged(response_env[:response_headers]) }
          logger.error { tagged(response_env[:body]) }
        end
      end
    end

    private

    def tagged(message)
      "#{tags_string} #{message}"
    end

    def tags_string
      tags.map { |tag| "[#{tag}]" }.join(' ')
    end
  end
end
