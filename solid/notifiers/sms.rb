require_relative 'base'

# SMS
module Notifier
  class Sms < Base
    def initialize(key:, token:)
      # @twilio = Twilio::Client.new(key, token)
    end

    def send(user, message)
      # @twilio.messages.create(to: user.phone, body: message)
      puts 'Sms message sent!'
    end
  end
end
