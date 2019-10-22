require "./spec_helper"

describe Twilio do
  describe "Error" do
    it "raise an exception" do
      expect_raises(Twilio::Error) do
        raise Twilio::Error.new
      end
    end
  end
end
