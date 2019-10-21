module Twilio
  class Client
    Host = URI.parse("https://api.twilio.com")

    def initialize(@account_sid : String, auth_token)
      @http_client = HTTP::Client.new(Host)
      @http_client.basic_auth(account_sid, auth_token)
    end

    def messages
      @messages ||= Api::Messages.new(@http_client, @account_sid)
    end
  end
end