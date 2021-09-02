module Twilio
  class Error < Exception
    class Mapping
      include JSON::Serializable

      property message : String
      property status : Int32
    end
  end
end
