class BankAccount
  def initialize
    @balance = 0
  end
  def deposit(cash)
    if cash > 0
      @balance += cash
      "#{cash} added to your account"
    else
      "#{cash} is not a valid amount try positive amount to deposit"
    end
  end
  def withdraw(cash)
    if @balance - cash > 0
      if cash > 0
        @balance -= cash
        "#{cash} amount is withdraw from your account"
      else
        "#{cash} is not a valid amount try postive amount to withdraw"
      end
    else
      "You donot have enough balance to withdraw #{cash} amount"
    end
  end
  def show_balance
    "Your current balance is #{@balance}"
  end
end

bank_account = BankAccount.new
puts bank_account.deposit(100)# 100 added to your account
puts bank_account.deposit(-10)# -10 is not a valid amount try positive amount to deposit
puts bank_account.withdraw(0)# 0 is not a valid amount try postive amount to withdraw
puts bank_account.withdraw(20)# 20 amount is withdraw from your account
puts bank_account.show_balance# your current balance is 80
puts bank_account.withdraw(90)
