require_relative 'base'

# Gmail
module Notifier
  class Gmail < Base
    def initialize(smtp: 'smtp.gmail.com', port: 587)
      # @mailer = Smtp.new(smtp, port)
    end

    def send(user, message)
      # @mailer.send(user.email, message)
      puts 'Gmail message sent!'
    end
  end
end
