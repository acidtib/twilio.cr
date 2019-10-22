require "../src/twilio.cr"

account_sid = ENV["TWILIO_ACCOUNT_SID"]
auth_token = ENV["TWILIO_AUTH_TOKEN"]

client = Twilio::Client.new(account_sid, auth_token)

newCall = client.calls.create(
  from: "+15005550006",
  to: "+15005550006",
  url: "http://demo.twilio.com/docs/voice.xml"
)

puts newCall