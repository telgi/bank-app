require 'printer'

describe Printer do

  let(:printer) { described_class.new }
  let(:account) { double("account") }

  it { is_expected.to respond_to(:statement) }

  describe '#statement' do
    it 'outputs table headers for date, credit, debit, and balance' do
      expect { printer.statement }.to output("date || credit || debit || balance\n").to_stdout
    end
  end

end
