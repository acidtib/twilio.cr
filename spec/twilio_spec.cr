require "./spec_helper"

describe Twilio do
  describe "Client" do
    it "set up a client" do
      client = Twilio::Client.new(account_sid: "someSid", auth_token: "someToken")
      client.account_sid.should eq("someSid")
    end
  end
end
