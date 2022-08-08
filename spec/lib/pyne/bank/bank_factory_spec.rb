require 'spec_helper'
require 'pyne/bank/bank_factory'
require 'adapters/bank1_adapter'


describe 'BankFactory' do

  subject { Pyne::Bank::BankFactory }

  context '.for' do
    let(:params) { { account_id: 1, to_date: Date.new, from_date: Date.new } }

    context 'when I pass a bank it exists' do
      it 'returns the correct adapter' do
        expect(subject.for(:bank_1, params)).to be_a Adapters::Bank1Adapter
      end
    end

    context 'when I pass does not exists' do
      it 'returns warning message' do
        expect(subject.for(:not_exist_bank, params)).to eq('Bank was not implemented')
      end
    end
  end
end
