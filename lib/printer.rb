require_relative 'account'

class Printer

  def statement_header
    puts "date || credit || debit || balance"
  end

  def deposit_log(amount, balance)
    date = DateTime.now.strftime('%d/%m/%Y')
    values = sprintf('%.2f', amount) + " || " + sprintf('%.2f', balance)
    transaction = "#{date} || Deposit || #{values}"
  end

  def withdrawal_log(amount, balance)
    date = DateTime.now.strftime('%d/%m/%Y')
    values = sprintf('%.2f', amount) + " || " + sprintf('%.2f', balance)
    transaction = "#{date} || Withdrawal || #{values}"
  end

end
