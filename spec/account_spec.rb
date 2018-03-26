require 'account'

describe Account do

  let(:account) { described_class.new }

  it { is_expected.to respond_to(:balance) }

  describe '#balance' do
    it 'starts at zero' do
      expect(account.balance).to eq(0)
    end
  end

end
