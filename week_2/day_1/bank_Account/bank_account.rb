class BankAccount

  def initialize(holder, balance, type)
    @holder_name = holder
    @balance = balance
    @type = type
  end
  # function get_account_name takes an account
  #  and returns the account holder's name
  def get_account_name()
    return @holder_name
  end

end
