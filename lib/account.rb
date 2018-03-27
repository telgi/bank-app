require_relative 'calculator'
require_relative 'transaction'
require 'date'

# Responsible for managing user account
class Account
  include Calculator

  attr_accessor :balance

  def initialize
    @balance = 0
    @transaction = Transaction.new
  end

  def deposit(amount)
    add(amount)
    @transaction.deposit_log(amount, balance)
  end

  def withdraw(amount)
    withdrawal_checks(amount)
    subtract(amount)
    @transaction.withdrawal_log(amount, balance)
  end

  def display_statement
    @transaction.process_statement
  end

  private

  def withdrawal_checks(amount)
    raise 'Balance too low' if overdrawn?(amount)
  end

  def overdrawn?(amount)
    amount > balance
  end
end
