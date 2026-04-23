require 'ostruct'
require_relative 'notifiers/gmail'
require_relative 'notifiers/sms'
require_relative 'notifiers/push'

# Orchestrator
class NotificationService
  def initialize(notifiers)
    @notifiers = notifiers
  end

  def send(user, message)
    @notifiers.each { |n| n.send(user, message) }
  end
end

user = OpenStruct.new(
  name: "Edil",
  email: "edil@example.com",
)

# Usage
service = NotificationService.new([
  Notifier::Gmail.new,
  Notifier::Sms.new(key: "AC123", token: "token456"),
  Notifier::Push.new(key: "firebase_key")
])

service.send(user, "Hello!")
