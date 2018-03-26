require_relative 'calculator'
require 'date'

class Account
  include Calculator

  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    add(balance, amount)
    date = DateTime.now.strftime('%d/%m/%Y')
    values = sprintf('%.2f', amount) + " || || " + sprintf('%.2f', balance)
    transaction = "#{date} || #{values}"
    transactions << transaction
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
