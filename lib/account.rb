require_relative 'calculator'
require_relative 'activity'
require 'date'

# Responsible for managing user account
class Account
  include Calculator

  attr_accessor :balance

  def initialize
    @balance = 0
    @activity = Activity.new
  end

  def deposit(amount)
    add(amount)
    @activity.deposit_log(amount, balance)
  end

  def withdraw(amount)
    withdrawal_checks(amount)
    subtract(amount)
    @activity.withdrawal_log(amount, balance)
  end

  def display_statement
    @activity.process_statement
  end

  private

  def withdrawal_checks(amount)
    raise 'Balance too low' if overdrawn?(amount)
  end

  def overdrawn?(amount)
    amount > balance
  end
end
