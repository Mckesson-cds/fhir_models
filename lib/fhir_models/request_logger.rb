module FHIR
  # Faraday middleware to log requests
  class RequestLogger
    attr_reader :app, :logger

    def initialize(app, logger)
      @app = app
      @logger = logger
    end

    def call(request_env)
      request_method = request_env.method
      request_url = request_env.url
      request_body = request_env.body
      request_headers = request_env.request_headers

      app.call(request_env).on_complete do |response_env|
        logger.info { "[FHIR Client] #{request_method.upcase} - #{response_env.status} - #{request_url}" }
        logger.debug { "[FHIR Client] #{request_body}" }

        if response_env.success?
          logger.debug { "[FHIR Client] #{request_headers}" }

          logger.info { "[FHIR Client] #{response_env[:response_headers]}" }
          logger.debug { "[FHIR Client] #{response_env[:body]}" }
        else
          logger.error { "[FHIR Client] #{request_headers}" }

          logger.error { "[FHIR Client] #{response_env[:response_headers]}" }
          logger.error { "[FHIR Client] #{response_env[:body]}" }
        end
      end
    end
  end
end
