require 'printer'

describe Printer do

  let(:printer) { described_class.new }
  let(:account) { double("account") }

  describe '#statement_header' do
    it 'outputs table headers for date, credit, debit, and balance' do
      expect { printer.statement }.to output("date || credit || debit || balance\n").to_stdout
    end
  end

end
