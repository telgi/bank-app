require 'account'

describe Account do

  it { is_expected.to respond_to(:balance) }

end
