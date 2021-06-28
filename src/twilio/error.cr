module Twilio
  class Error < Exception
    class Mapping
      include JSON::Serializable

      @[JSON::Field(key: "message")]
      property message : String

      @[JSON::Field(key: "status")]
      property status : Int32
    end
  end
end
