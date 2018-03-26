require 'printer'

describe Printer do

  let(:printer) { described_class.new }
  let(:account) { double("account") }

  describe '#statement_header' do
    it 'outputs table headers for date, credit, debit, and balance' do
      expect { printer.statement_header }.to output("Date       || Trans   || Balance\n").to_stdout
    end
  end

  describe '#statement' do
    it 'prints a statement of all transactions made' do
      allow(account).to receive(:deposit).and_return(100)
      date = DateTime.now.strftime('%d/%m/%Y')
      account.deposit(100)
      msg = "Date       || Trans   || Balance\n#{date} || +100.00 || 100.00\n"
      expect { printer.statement }.to output(msg).to_stdout
    end
  end

end
