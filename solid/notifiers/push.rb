require_relative 'base'

# Push
module Notifier
  class Push < Base
    def initialize(key:)
      # @fcm = Fcm.new(key)
    end

    def send(user, message)
      # @fcm.send(user.device_token, message)
      puts 'Push message sent!'
    end
  end
end
