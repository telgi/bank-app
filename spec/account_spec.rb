require 'account'
require 'timecop'

describe Account do
  describe '#deposit' do
    it 'deposits amount to account balance' do
      subject.deposit(100)
      expect(subject.balance).to eq(100)
    end
  end

  describe '#withdraw' do
    it 'withdraws amount from account balance' do
      subject.deposit(100)
      subject.withdraw(50)
      expect(subject.balance).to eq(50)
    end

    it 'raises error if balance would be below zero' do
      expect { subject.withdraw(10) }.to raise_error 'Balance too low'
    end
  end

  describe '#display_statement' do
    it 'displays a statement of all transactions made' do
      date = Time.now.strftime('%d/%m/%Y')
      Timecop.freeze(date)
      subject.deposit(100)
      msg = "Date      || Trans   || Balance\n27/03/2018 || +100.00 || 100.00\n"
      expect { subject.display_statement }.to output(msg).to_stdout
    end
  end
end
