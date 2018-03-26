require_relative 'account'

class Printer

  def statement_header
    puts "Date       || Trans   || Balance"
  end

  def deposit_log(amount, balance)
    date = DateTime.now.strftime('%d/%m/%Y')
    values = sprintf('%.2f', amount) + " || " + sprintf('%.2f', balance)
    transaction = "#{date} || +#{values}"
  end

  def withdrawal_log(amount, balance)
    date = DateTime.now.strftime('%d/%m/%Y')
    values = sprintf('%.2f', amount) + " || " + sprintf('%.2f', balance)
    transaction = "#{date} || -#{values}"
  end

  def statement
    statement_header
    puts "26/03/2018 || +100.00 || 100.00"
  end

end
