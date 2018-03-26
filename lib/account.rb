require_relative 'calculator'
require_relative 'activity'
require 'date'

class Account
  include Calculator

  attr_accessor :balance

  def initialize
    @balance = 0
    @activity = Activity.new
  end

  def deposit(amount)
    add(balance, amount)
    @activity.deposit_log(amount, balance)
  end

  def withdraw(amount)
    withdrawal_checks(amount)
    subtract(balance, amount)
    @activity.withdrawal_log(amount, balance)
  end

  private

  def withdrawal_checks(amount)
    raise "Balance too low" if overdrawn?(amount)
  end

  def overdrawn?(amount)
    amount > balance
  end

end
