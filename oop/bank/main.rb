require_relative 'savings_account'
require_relative 'checking_account'

savings = SavingsAccount.new(1000)
checking = CheckingAccount.new(1000)

savings.deposit(20)
savings.withdraw(30)

checking.deposit(10)
checking.withdraw(35)

savings.transfer(checking, 150)
Account.print_balances([savings, checking])
