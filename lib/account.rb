require_relative 'calculator'

class Account
  include Calculator

  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  def deposit(amount)
    add(balance, amount)
  end

  def withdraw(amount)
    raise "Balance too low" if amount > balance
    @balance -= amount
  end

end
