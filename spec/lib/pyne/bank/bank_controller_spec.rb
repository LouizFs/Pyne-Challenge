require 'spec_helper'
require 'pyne/bank/bank_controller'

describe 'BankController' do

  subject { Pyne::Bank::BankController.new }

  before do
    allow_any_instance_of(Integration::Bank1::Bank1AccountSource).to receive(:get_transactions).and_return(['transaction object1'])
    allow_any_instance_of(Integration::Bank1::Bank1AccountSource).to receive(:get_account_balance).and_return(111)

    allow_any_instance_of(Integration::Bank2::Bank2AccountSource).to receive(:get_transactions).and_return(['transaction object2'])
    allow_any_instance_of(Integration::Bank2::Bank2AccountSource).to receive(:get_balance).and_return(222)
  end

  context '.print_transactions' do
    it 'prints transactions of all banks adapters' do
      expect{subject.print_transactions}.to output("transaction object1\ntransaction object2\n").to_stdout
    end
  end

  context '.print_transactions' do
    it 'prints balances of all banks adapters' do
      expect{subject.print_balances}.to output("111\n222\n").to_stdout
    end
  end
end
