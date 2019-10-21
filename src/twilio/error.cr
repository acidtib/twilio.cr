module Twilio
  class Error < Exception

    class Mapping
      JSON.mapping(
        message: String,
        status: Int32
      )
    end
  end
end