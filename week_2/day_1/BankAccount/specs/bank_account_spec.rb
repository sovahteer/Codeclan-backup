require('minitest/autorun')
require_relative('../bank_account')

class TestBankAccount < MiniTest::Test

  # Create a bank account
  # Check the name is equal to John
  def test_account_name
    bank_account = BankAccount.new("John", 500, "current")
    assert_equal("John", bank_account.holder_name())
  end

  def test_account_type
    bank_account = BankAccount.new("John", 500, "current")
    assert_equal("current", bank_account.type())
  end

  def test_balance
    bank_account = BankAccount.new("John", 500, "current")
    assert_equal(500, bank_account.balance())
  end

  def test_set_balance
    bank_account = BankAccount.new("John", 500, "current")
    bank_account.balance = 10000
    assert_equal(10000, bank_account.balance)
  end

  def test_set_type
    bank_account = BankAccount.new("John", 500, "current")
    bank_account.type = "business"
    assert_equal("business", bank_account.type)
  end

  def test_set_holder_name
    bank_account = BankAccount.new("John", 500, "current")
    bank_account.holder_name = "Suzan"
    assert_equal("Suzan", bank_account.holder_name)
  end

  def test_pay_into_account
    bank_account = BankAccount.new("Alice", 5000, "business")
    bank_account.pay_in(1000)
    assert_equal(6000, bank_account.balance)
  end

  def test_monthly_fee
    bank_account = BankAccount.new("Alice", 5000, "business")
    bank_account.pay_monthly_fee
    assert_equal(4950, bank_account.balance)
  end

  # The one where the account type is personal
  # apply a fee of 10 NKNK
  def test_monthly_fee_personal
    bank_account = BankAccount.new("Craig", 2000, "personal")
    bank_account.pay_monthly_fee
    assert_equal(1990, bank_account.balance)
  end
  # The one where the account type is business
  # apply a fee of 50 NKNK
  def test_monthly_fee_business
    bank_account = BankAccount.new("Dorah", 2000, "business")
    bank_account.pay_monthly_fee
    assert_equal(1950, bank_account.balance)
  end
end
