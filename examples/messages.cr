require "../src/twilio.cr"

account_sid = ENV["TWILIO_ACCOUNT_SID"]
auth_token = ENV["TWILIO_AUTH_TOKEN"]

client = Twilio::Client.new(account_sid, auth_token)

# test number 15005550006
message = client.messages.create(from: "+15005550006", to: "+15005550006", body: "Hey there!")

puts message["sid"]

fetchMessage = client.messages.fetch(message["sid"])

puts fetchMessage

# sleep to prevent,  
# Cannot delete message because delivery has not been completed.
sleep(5)
redactMessage = client.messages.update(message["sid"]) 

puts redactMessage

sleep(1)
client.messages.delete(message["sid"]) 