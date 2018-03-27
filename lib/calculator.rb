# Responsible for calculating changes to balance
module Calculator
  private

  def add(amount)
    @balance += amount
  end

  def subtract(amount)
    @balance -= amount
  end
end
