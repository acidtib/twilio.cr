module Twilio
  class Api::Messages < Api
    def create(from, to, message)
      response = @http_client.post("/2010-04-01/Accounts/#{@account_sid}/Messages.json", form: {
            "To"   => to,
            "From" => from,
            "Body" => message
      })

      handleResponse(response)
    end

    def fetch(sid=nil)
      response = @http_client.get("/2010-04-01/Accounts/#{@account_sid}/Messages/#{sid}.json")

      handleResponse(response)
    end

    def list(to=nil, from=nil, dateSent=nil, limit="20")
      params = Hash(String, String).new
      params["To"] = to if to
      params["From"] = from if from
      params["DateSent"] = dateSent if dateSent
      params["PageSize"] = limit if limit
      params = HTTP::Params.encode(params)

      response = @http_client.get("/2010-04-01/Accounts/#{@account_sid}/Messages.json?" + params)
      
      handleResponse(response)
    end

    def update(sid=nil, body="")
      response = @http_client.post("/2010-04-01/Accounts/#{@account_sid}/Messages/#{sid}.json", form: {
        "Body" => body
      })

      handleResponse(response)
    end

    def delete(sid=nil)
      @http_client.delete("/2010-04-01/Accounts/#{@account_sid}/Messages/#{sid}.json")
    end
  end
end