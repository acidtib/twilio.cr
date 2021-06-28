module Twilio
  class Api::Accounts < Api

    def list
      response = @http_client.get("/2010-04-01/Accounts.json")
      handleResponse(response)
    end

    def fetch(sid = @account_sid)
      response = @http_client.get("/2010-04-01/Accounts/#{sid}.json")

      handleResponse(response)
    end

    def balance(sid = @account_sid)
      response = @http_client.get("/2010-04-01/Accounts/#{sid}/Balance.json")

      handleResponse(response)
    end

  end
end
