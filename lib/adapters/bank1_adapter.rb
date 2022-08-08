require 'interfaces/bank_interface'
require 'integration/bank1/bank1_account_source'

module Adapters
  class Bank1Adapter 
    include Interfaces::BankInterface

    def initialize(account_id, from_date, to_date)
      @account_id = account_id
      @from_date = from_date
      @to_date = to_date
      @source = Integration::Bank1::Bank1AccountSource.new 
    end
    
    def transactions
      @source.get_transactions(@account_id, @from_date, @to_date)
    end

    def balances
      @source.get_account_balance(@account_id)
    end

    def currency
      @source.get_account_currency(@account_id)
    end
  end
end
