require 'spec_helper'
require 'adapters/bank1_adapter'

describe 'Bank1Adapter' do

  subject { Adapters::Bank1Adapter.new(1, Date.new, Date.new) }

  before do
    allow_any_instance_of(Integration::Bank1::Bank1AccountSource).to receive(:get_transactions).and_return(['transaction object'])
    allow_any_instance_of(Integration::Bank1::Bank1AccountSource).to receive(:get_account_balance).and_return(111)
    allow_any_instance_of(Integration::Bank1::Bank1AccountSource).to receive(:get_account_currency).and_return("something")
  end

  context '.transactions' do
    it 'return transactions' do
      expect(subject.transactions).to eq(['transaction object'])
    end
  end

  context '.balances' do
    it 'return balances' do
      expect(subject.balances).to eq(111)
    end
  end

  context '.currency' do
    it 'return currency' do
      expect(subject.currency).to eq("something")
    end
  end
end
