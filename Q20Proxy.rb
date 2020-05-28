#Actual Class, Most probably will have a lot of attributes and method.
#Keeping it simple for sake of understanding
class BankAccount
  attr_reader :balance

  def initialize(starting_balance=0)
    @balance = starting_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

#Virtual Proxy implementation. i.e:Actual Object of a class is not created until
#a method of Proxy class is not called. Lazy Loading concept
class BankAccountProxy
  def initialize(balance=0)
    @balance=balance
  end

  def deposit(cash)
    s = real_object
    return s.deposit(cash)
  end

  def withdraw(cash)
    s = real_object
    return s.withdraw(cash)
  end

  def balance
    s = real_object
    return s.balance
  end

  def real_object
    @real_object || (@real_object = BankAccount.new(@balance))
  end
end

b = BankAccountProxy.new(500)
p b.balance
