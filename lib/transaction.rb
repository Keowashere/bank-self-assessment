class Transaction
  attr_reader :amount, :log_date, :balance, :type

  def initialize(amount, date, balance, type)
    @amount = amount
    @log_date = date
    @balance = balance
    @type = type
  end
end
