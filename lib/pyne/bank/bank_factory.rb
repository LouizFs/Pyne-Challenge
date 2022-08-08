require 'adapters/bank1_adapter'
require 'adapters/bank2_adapter'

module Pyne
  module Bank
    class BankFactory

      BANKS = {
        bank_1: Adapters::Bank1Adapter,
        bank_2: Adapters::Bank2Adapter
      }

      def self.for(bank, attributes)
        BANKS[bank]&.new(attributes[:account_id], attributes[:from_date], attributes[:to_date] ) || 'Bank was not implemented'
      end

    end
  end
end
