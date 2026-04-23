# Base class — гарантируем интерфейс (LSP)
module Notifier
  class Base
    def send(user, message)
      raise NotImplementedError, "#{self.class} must implement send"
    end
  end
end
