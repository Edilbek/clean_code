require_relative 'account'

class SavingsAccount < Account
  INTEREST_RATE = 0.05  # 5% процентов!

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "Insufficient funds" if amount > @balance
    fee = amount * 0.01  # комиссия за снятие 1%
    @balance -= (amount + fee)
  end

  def add_interest
    @balance += @balance * INTEREST_RATE
  end
end
