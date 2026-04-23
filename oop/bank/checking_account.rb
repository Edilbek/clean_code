require_relative 'account'

class CheckingAccount < Account
  OVERDRAFT_LIMIT = 200  # the balance can be -200

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "Insufficient funds" if amount > @balance + OVERDRAFT_LIMIT
    @balance -= amount  # без комиссии
  end
end
