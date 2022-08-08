require 'integration/bank2/bank2_account_transaction'
require 'integration/bank2/bank2_account_balance'

module Integration
  module Bank2
    class Bank2AccountSource
      
      def get_balance
        Bank2AccountBalance.new(512.5, "USD")
      end

      def get_transactions(account_num, from_date, to_date)
        [
          Bank2AccountTransaction.new(125, Bank2AccountTransaction::TRANSACTION_TYPES.DEBIT, "Amazon.com"),
          Bank2AccountTransaction.new(500, Bank2AccountTransaction::TRANSACTION_TYPES.DEBIT, "Car insurance"),
          Bank2AccountTransaction.new(800, Bank2AccountTransaction::TRANSACTION_TYPES.CREDIT, "Salary")
        ]
      end

    end
  end
end