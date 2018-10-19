class BankAccount

  attr_reader :type, :balance, :holder_name
  attr_writer :type, :balance, :holder_name

  def initialize(holder_name, balance, type)
    @holder_name = holder_name
    @balance = balance
    @type = type
  end

  def pay_in(value)
    @balance += value
  end

  def pay_monthly_fee
    @balance -= 10 if @type == 'personal'
    @balance -= 50 if @type == 'business'
  end
end
