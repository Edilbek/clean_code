require_relative 'transferable'

class Account
    include Transferable
    attr_reader :balance

    def initialize(balance)
      @balance = balance
    end

    def deposit(amount)
      raise NotImplementedError
    end

    def withdraw(amount)
      raise NotImplementedError
    end

    def self.print_balances(accounts)
      accounts.each do |account|
        puts "#{account.class} balance: #{account.balance}"
      end
    end
end
