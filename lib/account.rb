require_relative 'calculator'
require_relative 'printer'
require 'date'

class Account
  include Calculator

  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
    @printer = Printer.new
  end

  def deposit(amount)
    add(balance, amount)
    @transactions << @printer.deposit_log(balance, amount)
  end

  def withdraw(amount)
    withdrawal_checks(amount)
    subtract(balance, amount)
    @transactions << @printer.withdrawal_log(balance, amount)
  end

  private

  def withdrawal_checks(amount)
    raise "Balance too low" if overdrawn?(amount)
  end

  def overdrawn?(amount)
    amount > balance
  end

end
