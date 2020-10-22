class Account
  attr_reader :balance

  def initialize
    @balance = 0
    @transaction_log = []
  end

  def deposit(amount, date = nil)
    @balance += amount
    log_transaction(amount, date, :d)
  end

  def withdraw(amount, date = nil)
    @balance -= amount
    log_transaction(amount, date, :w)
  end

  def print_statement
    text = 'date || credit || debit || balance'
    @transaction_log.each { |log| text += format_log_entry(log) }
    text
  end

  private

  def log_transaction(amount, date, type)
    @transaction_log << { amount: amount,
                          log_date: get_date(date),
                          balance: @balance,
                          type: type }
  end

  def format_log_entry(log)
    text = "\\n#{log[:log_date]}" \
           " || #{'%.2f' % log[:amount] if log[:type] == :d}" \
           " || #{'%.2f' % log[:amount] if log[:type] == :w}" \
           " || #{'%.2f' % log[:balance]}"
    text.gsub('  ', ' ')
  end

  def get_date(date)
    date_now = Time.now.strftime('%d/%m/%Y')
    date ||= date_now
    date
  end
end
