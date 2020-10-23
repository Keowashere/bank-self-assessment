# Class to print statement
class Printer
  def print_statement(transaction_log)
    text = 'date || credit || debit || balance'
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
