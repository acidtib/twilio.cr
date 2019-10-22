# twilio.cr
[![Build Status](https://travis-ci.org/arubinofaux/twilio.cr.svg?branch=master)](https://travis-ci.org/arubinofaux/twilio.cr)

Twilio API wrapper for Crystal.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     twilio:
       github: arubinofaux/twilio.cr
   ```

2. Run `shards install`

## Usage

#### Setup Work

```crystal
require "twilio"

# put your own credentials here
account_sid = "ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
auth_token = "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy"

# set up a client to talk to the Twilio API
client = Twilio::Client.new(account_sid, auth_token)
```

#### Make a Call

```crystal
client.calls.create(
  from: "+15005550006",
  to: "+15005550006",
  url: "http://demo.twilio.com/docs/voice.xml"
)
```

#### Send an SMS

```crystal
client.messages.create(
  from: "+15005550006",
  to: "+15005550006",
  body: "Hey there!"
)
```

#### List your Messages

```crystal
client.messages.list(limit: 20)
```

#### Fetch a single message by sid

```crystal
# put the message sid you want to retrieve here:
message_sid = "SMxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
client.messages.fetch(message_sid)
```

## Progress

### API methods

#### Core

- [x] Client

##### Messages

- [x] Create a message

- [x] Fetch a message

- [x] Read multiple messages 

- [x] Update a message

- [x] Delete a message

##### Calls

- [x] Create a call

- [x] Fetch a call

- [ ] Fetch call recordings

- [ ] Fetch call feedback

- [ ] Read multiple calls

- [x] Update a call

- [x] Delete a call

## Development

For development, you will need API Credentials from Twilio. You can find instructions on how to acquire one for your account [here](https://www.twilio.com/docs/usage/your-request-to-twilio).

If you found a bug in the library or would like new features added, go ahead and open issues or pull requests against this repo!

## Contributing

1. Fork it (<https://github.com/arubinofaux/twilio.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [arubinofaux](https://github.com/arubinofaux) - creator and maintainer