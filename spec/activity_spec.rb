require 'activity'
require 'timecop'

describe Activity do

  let(:activity) { described_class.new }

  before(:each) do
    date = DateTime.now.strftime('%d/%m/%Y')
    Timecop.freeze(date)
  end

  describe '#deposit_log' do
    it 'logs every deposit' do
      activity.deposit_log(100, 100)
      expect(activity.transactions).to include("27/03/2018 || +100.00 || 100.00")
    end
  end

  describe '#withdrawal_log' do
    it 'logs every withdrawal' do
      date = DateTime.now.strftime('%d/%m/%Y')
      activity.withdrawal_log(50, 50)
      expect(activity.transactions).to include("27/03/2018 || -50.00 || 50.00")
    end
  end

end
