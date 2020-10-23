class Transaction
  attr_reader :amount, :log_date, :balance, :type

  def initialize(amount, date, balance, type)
    @amount = amount
    @log_date = get_date(date)
    @balance = balance
    @type = type
  end

  private

  def get_date(date)
    date_now = Time.now.strftime('%d/%m/%Y')
    date ||= date_now
    date
  end
end
