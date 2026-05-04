module Transferable
  def transfer(to_account, amount)
    withdraw(amount)
    to_account.deposit(amount)
  end
end
