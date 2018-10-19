require "minitest/autorun"
require_relative "../bank_account"

class TestBankAccount < MiniTest::Test

  # Create a bank account
  # Check the name is equal to John
  def test_account_name
    input_holder_name = "John"
    input_balance = 500
    input_type = "current"

    bank_account = BankAccount.new(input_holder_name, input_balance, input_type)
    name = bank_account.get_account_name()
    assert_equal("John", name)
  end

end
