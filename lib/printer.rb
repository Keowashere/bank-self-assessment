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
           " || #{'%.2f' % log.amount if log.type == :d}" \
           " || #{'%.2f' % log.amount if log.type == :w}" \
           " || #{'%.2f' % log.balance}"
    text.gsub('  ', ' ')
  end
end
