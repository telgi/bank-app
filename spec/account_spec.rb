require 'account'

describe Account do

  let(:account) { described_class.new }

  describe '#balance' do
    it 'starts by returning a balance of zero' do
      expect(account.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'deposits amount to account balance' do
      account.deposit(100)
      expect(account.balance).to eq(100)
    end
  end

  describe '#withdraw' do
    it 'withdraws amount from account balance' do
      account.deposit(100)
      account.withdraw(50)
      expect(account.balance).to eq(50)
    end
  end

end
