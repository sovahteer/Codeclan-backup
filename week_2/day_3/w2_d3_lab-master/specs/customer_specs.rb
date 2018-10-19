require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')


class CustomerTest < MiniTest::Test

def setup
  @drink1 = Drink.new("cider", 3, 4)
  @customer = Customer.new("Euan", 100, 28, 0)
  @food = Food.new("nachos", 6, 2)
end

def test_customer_name

  assert_equal("Euan", @customer.name)
end

def test_customer_wallet

  assert_equal(100, @customer.wallet)
end

def test_customer_age
  assert_equal(28, @customer.age)
end

def test_customer_loses_money
  @customer.customer_loses_money(@drink1.price)
  assert_equal(97, @customer.wallet)
end

def test_drunkenness_level
  assert_equal(0, @customer.drunkenness)
end

def test_add_to_drunkenness
  @customer.add_to_drunkenness(@drink1.alcohol_level)
  actual=@customer.drunkenness
  assert_equal(4, actual)
end

def test_reduce_drunkenness
  @customer.reduce_drunkenness(@drink1.alcohol_level, @food.rejuvanation_level)
  actual=@customer.drunkenness
  assert_equal(2, actual)
end



end #end of class
