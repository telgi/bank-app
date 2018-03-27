require_relative 'printer'
# Responsible for logging transactions
class Activity
  attr_reader :transactions

  def initialize
    @transactions = []
    @printer = Printer.new
  end

  def deposit_log(amount, balance)
    @transactions << deposit_transaction(amount, balance)
  end

  def withdrawal_log(amount, balance)
    @transactions << withdrawal_transaction(amount, balance)
  end

  def process_statement
    @printer.statement(transactions)
  end

  private

  def deposit_transaction(amount, balance)
    date = Time.now.strftime('%d/%m/%Y')
    values = format('%.2f', amount) + ' || ' + format('%.2f', balance)
    "#{date} || +#{values}"
  end

  def withdrawal_transaction(amount, balance)
    date = Time.now.strftime('%d/%m/%Y')
    values = format('%.2f', amount) + ' || ' + format('%.2f', balance)
    "#{date} || -#{values}"
  end
end
