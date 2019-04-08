# frozen_string_literal: true

# A Service to send SMS via twilio so users can be verified by SMS.
class SMSGatewayService
  attr_reader :mobile_phone_number, :code

  def initialize(mobile_phone_number, code)
    @mobile_phone_number = mobile_phone_number
    @code = code
  end

  def deliver_code
    message = I18n.t("activemodel.verifications.decidim.sms.authorizations.sms_message") + ' ' + code
    url_form_data = URI.encode_www_form(
                    "username" => ENV["SMS_USERNAME"],
                    "password" => ENV["SMS_PASSWORD"],
                    "message" => message,
                    "number" => mobile_phone_number)
    url = URI.parse(ENV["SMS_URL"] + url_form_data)
    req = Net::HTTP::Post.new(url)
    http = Net::HTTP.new(url.hostname, url.port)
    http.use_ssl = true
    res = http.request(req)
    puts res.body
  end
end
