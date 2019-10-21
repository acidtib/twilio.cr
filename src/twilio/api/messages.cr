module Twilio
  class Api::Messages < Api
    def create(from, to, message)
      response = @http_client.post("/2010-04-01/Accounts/#{@account_sid}/Messages.json", form: {
            "To"   => to,
            "From" => from,
            "Body" => message
      })

      handle_response(response)
    end

    def fetch(sid)
      response = @http_client.get("/2010-04-01/Accounts/#{@account_sid}/Messages/#{sid}.json")

      handle_response(response)
    end

    def list(to=nil, from=nil, dateSent=nil, limit="20")
      params = Hash(String, String).new
      params["To"] = to if to
      params["From"] = from if from
      params["DateSent"] = dateSent if dateSent
      params["PageSize"] = limit if limit
      params = HTTP::Params.encode(params)

      response = @http_client.get("/2010-04-01/Accounts/#{@account_sid}/Messages.json?" + params)
      
      handle_response(response)
    end
  end
end