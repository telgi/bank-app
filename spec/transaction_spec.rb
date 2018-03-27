require 'transaction'
require 'timecop'

describe Transaction do
  before(:each) do
    date = Time.now.strftime('%d/%m/%Y')
    Timecop.freeze(date)
  end

  describe '#deposit_log' do
    it 'logs every deposit' do
      subject.deposit_log(100, 100)
      trans = '27/03/2018 || +100.00 || 100.00'
      expect(subject.transactions).to include(trans)
    end
  end

  describe '#withdrawal_log' do
    it 'logs every withdrawal' do
      subject.withdrawal_log(50, 50)
      expect(subject.transactions).to include('27/03/2018 || -50.00 || 50.00')
    end
  end
end
