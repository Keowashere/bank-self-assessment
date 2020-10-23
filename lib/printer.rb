# Class to print statement
class Printer
  def initialize
    @header = 'date || credit || debit || balance'
  end

  def print_statement(transaction_log)
    text = @header
    transaction_log.each { |log| text += format_log_entry(log) }
    text
  end

  private

  def format_log_entry(log)
    text = "\\n#{log.log_date}" \
           " || #{type_amount(log, :d)}" \
           " || #{type_amount(log, :w)}" \
           " || #{'%.2f' % log.balance}"
    text.gsub('  ', ' ')
  end

  def type_amount(log, type)
    '%.2f' % log.amount if log.type == type
  end
end
