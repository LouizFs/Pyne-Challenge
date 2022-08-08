require 'integration/bank1/bank1_transaction'

module Integration
  module Bank1
    class Bank1AccountSource

      def get_transactions(account_id, from_date, to_date)
        [
          Bank1Transaction.new(100, Bank1Transaction::TYPE_CREDIT, "Check deposit"),
          Bank1Transaction.new(25.5, Bank1Transaction::TYPE_DEBIT, "Debit card purchase"),
          Bank1Transaction.new(225, Bank1Transaction::TYPE_DEBIT, "Rent payment")
        ]
      end
    
      def get_account_balance(account_id)
        215.5
      end
    
      def get_account_currency(account_id)
        'USD'
      end
      
    end 
  end
end
