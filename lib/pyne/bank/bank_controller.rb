require 'pyne/bank/bank_factory'
require 'date'

module Pyne
  module Bank
    class BankController

      def print_balances
        banks.each_key do |bank|
          puts Pyne::Bank::BankFactory.for(bank, parameters).balances
        end
      end

      def print_transactions
        banks.each_key do |bank|
          puts Pyne::Bank::BankFactory.for(bank, parameters).transactions
        end
      end

      private

      def parameters
        { account_id: 1, from_date: Date.today, to_date: Date.today }
      end

      def banks
        Pyne::Bank::BankFactory::BANKS
      end

    end
  end
end