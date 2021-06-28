module Twilio
  class Api::Calls < Api
    def create(from = nil, to = nil, url = nil, applicationSid = nil, method = nil, fallbackUrl = nil, fallbackMethod = nil, statusCallback = nil, statusCallbackEvent = nil, statusCallbackMethod = nil, sendDigits = nil, timeout = nil, record = nil, recordingChannels = nil, recordingStatusCallback = nil, recordingStatusCallbackMethod = nil, recordingStatusCallbackEvent = nil, sipAuthUsername = nil, sipAuthPassword = nil, trim = nil, callerId = nil, machineDetection = nil, machineDetectionTimeout = nil, machineDetectionSpeechThreshold = nil, machineDetectionSpeechEndThreshold = nil, machineDetectionSilenceTimeout = nil, twiml = nil)
      params = Hash(String, String).new
      params["To"] = to
      params["From"] = from
      params["Url"] = url if url
      params["ApplicationSid"] = applicationSid if applicationSid
      params["Method"] = method if method
      params["FallbackUrl"] = fallbackUrl if fallbackUrl
      params["FallbackMethod"] = fallbackMethod if fallbackMethod
      params["StatusCallback"] = statusCallback if statusCallback
      params["StatusCallbackEvent"] = statusCallbackEvent if statusCallbackEvent
      params["StatusCallbackMethod"] = statusCallbackMethod if statusCallbackMethod
      params["SendDigits"] = sendDigits if sendDigits
      params["Timeout"] = timeout if timeout
      params["Record"] = record if record
      params["RecordingChannels"] = recordingChannels if recordingChannels
      params["RecordingStatusCallback"] = recordingStatusCallback if recordingStatusCallback
      params["RecordingStatusCallbackMethod"] = recordingStatusCallbackMethod if recordingStatusCallbackMethod
      params["RecordingStatusCallbackEvent"] = recordingStatusCallbackEvent if recordingStatusCallbackEvent
      params["SipAuthUsername"] = sipAuthUsername if sipAuthUsername
      params["SipAuthPassword"] = sipAuthPassword if sipAuthPassword
      params["Trim"] = trim if trim
      params["CallerId"] = callerId if callerId
      params["MachineDetection"] = machineDetection if machineDetection
      params["MachineDetectionTimeout"] = machineDetectionTimeout if machineDetectionTimeout
      params["MachineDetectionSpeechThreshold"] = machineDetectionSpeechThreshold if machineDetectionSpeechThreshold
      params["MachineDetectionSpeechEndThreshold"] = machineDetectionSpeechEndThreshold if machineDetectionSpeechEndThreshold
      params["MachineDetectionSilenceTimeout"] = machineDetectionSilenceTimeout if machineDetectionSilenceTimeout
      params["Twiml"] = twiml if twiml

      response = @http_client.post("/2010-04-01/Accounts/#{@account_sid}/Calls.json", form: params)

      handleResponse(response)
    end

    def fetch(sid = nil)
      response = @http_client.get("/2010-04-01/Accounts/#{@account_sid}/Calls/#{sid}.json")

      handleResponse(response)
    end

    def update(sid = nil, url = nil, method = nil, status = nil, fallbackUrl = nil, fallbackMethod = nil, statusCallback = nil, statusCallbackMethod = nil, twiml = nil)
      params = Hash(String, String).new
      params["Url"] = url if url
      params["Method"] = method if method
      params["Status"] = status if status
      params["FallbackUrl"] = fallbackUrl if fallbackUrl
      params["FallbackMethod"] = fallbackMethod if fallbackMethod
      params["StatusCallback"] = statusCallback if statusCallback
      params["StatusCallbackMethod"] = statusCallbackMethod if statusCallbackMethod
      params["Twiml"] = twiml if twiml

      response = @http_client.post("/2010-04-01/Accounts/#{@account_sid}/Calls/#{sid}.json", form: params)

      handleResponse(response)
    end

    def delete(sid = nil)
      @http_client.delete("/2010-04-01/Accounts/#{@account_sid}/Calls/#{sid}.json")
    end

    def delete(sid = nil)
      @http_client.delete("/2010-04-01/Accounts/#{@account_sid}/Calls/#{sid}.json")
    end
  end
end
