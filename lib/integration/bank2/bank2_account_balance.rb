class Bank2AccountBalance

  attr_reader :balance, :currency

  def initialize(balance, currency)
    @balance =  balance
    @currency = currency
  end

end
