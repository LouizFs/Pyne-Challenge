require 'spec_helper'
require 'adapters/bank2_adapter'

describe 'Bank2Adapter' do

  subject { Adapters::Bank2Adapter.new(1, Date.new, Date.new) }

  before do
    allow_any_instance_of(Integration::Bank2::Bank2AccountSource).to receive(:get_transactions).and_return(['transaction object'])
    allow_any_instance_of(Integration::Bank2::Bank2AccountSource).to receive(:get_balance).and_return(111)
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
      expect(subject.currency).to eq(nil)
    end
  end
end
