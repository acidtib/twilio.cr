require "connect-proxy"

module Twilio
  class Client
    Host = URI.parse("https://api.twilio.com")
    getter account_sid

    def initialize(@account_sid : String, auth_token, proxy = false)
      @http_client = proxy ? ConnectProxy::HTTPClient.new(Host) : HTTP::Client.new(Host)
      @http_client.basic_auth(account_sid, auth_token)
    end

    def accounts
      @accounts ||= Api::Accounts.new(@http_client, @account_sid)
    end

    def messages
      @messages ||= Api::Messages.new(@http_client, @account_sid)
    end

    def calls
      @calls ||= Api::Calls.new(@http_client, @account_sid)
    end
  end
end
