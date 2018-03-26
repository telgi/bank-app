require_relative 'account'

class Printer

  def statement
    puts "date || credit || debit || balance"
  end

  def deposit_log(amount, balance)
    date = DateTime.now.strftime('%d/%m/%Y')
    values = sprintf('%.2f', amount) + " || || " + sprintf('%.2f', balance)
    transaction = "#{date} || #{values}" 
  end

end
