module Twilio
  class Api

    def initialize(@http_client : HTTP::Client, @account_sid : String)
      
    end

    def handleResponse(response : HTTP::Client::Response)
      case response.status_code
      when 200..299
        JSON.parse(response.body)
      when 400..499
        message = Twilio::Error::Mapping.from_json(response.body).message
        raise Twilio::Error.new(message)
      when 500
        raise Twilio::Error.new("Internal Server Error")
      when 502
        raise Twilio::Error.new("Bad Gateway")
      when 503
        raise Twilio::Error.new("Service Unavailable")
      when 504
        raise Twilio::Error.new("Gateway Timeout")
      else
        ""
      end
    end
  end
end