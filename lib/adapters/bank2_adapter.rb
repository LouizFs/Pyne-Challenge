require 'interfaces/bank_interface'
require 'integration/bank2/bank2_account_source'

module Adapters
  class Bank2Adapter
    include Interfaces::BankInterface

    def initialize(account_id, from_date, to_date)
      @account_id = account_id
      @from_date = from_date
      @to_date = to_date
      @source = Integration::Bank2::Bank2AccountSource.new
    end

    def transactions
      @source.get_transactions(@account_id, @from_date, @to_date)
    end

    def balances
      @source.get_balance
    end

    def currency
    end 
    
  end
end
