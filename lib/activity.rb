require_relative 'printer'

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
    date = DateTime.now.strftime('%d/%m/%Y')
    values = sprintf('%.2f', amount) + " || " + sprintf('%.2f', balance)
    transaction = "#{date} || +#{values}"
  end

  def withdrawal_transaction(amount, balance)
    date = DateTime.now.strftime('%d/%m/%Y')
    values = sprintf('%.2f', amount) + " || " + sprintf('%.2f', balance)
    transaction = "#{date} || -#{values}"
  end

end
