# frozen_string_literal: true

# A Service to send SMS via twilio so users can be verified by SMS.
class SMSGatewayService
  attr_reader :mobile_phone_number, :code

  def initialize(mobile_phone_number, code)
    @mobile_phone_number = mobile_phone_number
    @code = code
  end

  def deliver_code
    account_sid = 'AC763aa70941cf9bada9d94546c107db9b'
    auth_token = 'd8d436b57cc45104690e41a675f30731'
    client = Twilio::REST::Client.new(account_sid, auth_token)
    from = '+12017204675'
    client.messages.create(
      from: from,
      to: mobile_phone_number,
      body: "Hey friend! your verification code is #{code}"
    )
  end
end
