module Twilio
  class Api::Calls < Api
    def create(from=nil, to=nil, url=nil)
      response = @http_client.post("/2010-04-01/Accounts/#{@account_sid}/Calls.json", form: {
        "To"   => to,
        "From" => from,
        "Url" => url
      })

      handleResponse(response)
    end
  end
end