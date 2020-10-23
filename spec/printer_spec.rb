require 'printer'

RSpec.describe Printer do
  describe '#print_statement' do
    it 'prints header' do
      log = []
      expect(subject.print_statement(log)).to eq 'date || credit || debit || balance'
    end
    context 'get entries in log' do
      it 'prints a few lines' do
        log1 = instance_double('Transaction', amount: 1000, log_date: '10/01/2012', balance: 1000, type: :d)
        log2 = instance_double('Transaction', amount: 2000, log_date: '13/01/2012', balance: -1000, type: :w)
        log = [log1, log2]
        expect(subject.print_statement(log)).to eq 'date || credit || debit || balance' \
                                              '\n10/01/2012 || 1000.00 || || 1000.00' \
                                              '\n13/01/2012 || || 2000.00 || -1000.00'
      end
    end
  end
end
