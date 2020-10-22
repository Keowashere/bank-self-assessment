require 'account'

RSpec.describe Account do
  describe '#deposit' do
    it 'increases the balance' do
      expect { subject.deposit(100) }.to change { subject.balance }.by(100)
    end
  end
  describe '#withdraw' do
    it 'reduces the balance' do
      expect { subject.withdraw(100) }.to change { subject.balance }.by(-100)
    end
    it 'reduces the balance' do
      expect { subject.withdraw(100) }.to change { subject.balance }.by(-100)
    end
  end
  describe '#print_statement' do
    it 'prints header' do
      expect(subject.print_statement).to eq 'date || credit || debit || balance'
    end
    it 'prints a few lines' do
      subject.deposit(1000, '10/01/2012')
      subject.deposit(2000, '13/01/2012')
      expect(subject.print_statement).to eq 'date || credit || debit || balance' \
                                            '\n10/01/2012 || 1000.00 || || 1000.00' \
                                            '\n13/01/2012 || 2000.00 || || 3000.00'
    end
  end
end
