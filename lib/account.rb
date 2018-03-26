require_relative 'calculator'

class Account
  include Calculator

  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    add(balance, amount)
  end

  def withdraw(amount)
    withdrawal_checks(amount)
    subtract(balance, amount)
  end

  private

  def withdrawal_checks(amount)
    raise "Balance too low" if overdrawn?(amount)
  end

  def overdrawn?(amount)
    amount > balance
  end

end
