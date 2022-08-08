require 'ostruct'

class Bank2AccountTransaction
  TRANSACTION_TYPES = OpenStruct.new(DEBIT: 'DEBIT', CREDIT: 'CREDIT')

  attr_reader :amount, :type, :text

  def initialize(amount, type, text)
    @amount = amount
    @type = type
    @text = text
  end

end