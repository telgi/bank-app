class Printer

  def statement(transactions)
    statement_header
    statement_body(transactions)
  end

  private

  def statement_header
    puts "Date       || Trans   || Balance"
  end

  def statement_body(transactions)
    transactions.reverse.each do |trans|
      puts "#{trans}"
    end
  end

end
