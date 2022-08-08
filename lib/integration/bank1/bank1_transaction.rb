class Bank1Transaction
  TYPE_CREDIT = 1
  TYPE_DEBIT = 2

  attr_reader :amount, :type, :text

  def initialize(amount, type, text)
    @amount = amount
    @type = type
    @text = text
  end

end