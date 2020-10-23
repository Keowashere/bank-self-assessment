class Account
  attr_reader :balance

  def initialize
    @balance = 0
    @transaction_log = []
    @printer = Printer.new
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
    @printer.print_statement(@transaction_log)
  end

  private

  def log_transaction(amount, date, type)
    transaction = Transaction.new(amount, get_date(date), @balance, type)
    @transaction_log << transaction
  end

  def get_date(date)
    date_now = Time.now.strftime('%d/%m/%Y')
    date ||= date_now
    date
  end
end
