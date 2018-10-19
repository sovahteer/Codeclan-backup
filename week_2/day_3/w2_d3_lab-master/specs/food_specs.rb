require('minitest/autorun')
require('minitest/rg')
require_relative('../food.rb')

class FoodTest < MiniTest::Test

def setup
  @food = Food.new("nachos", 6, 2)
end

  def test_food_name
    assert_equal("nachos", @food.name)
  end

  def test_food_price
    assert_equal(6, @food.price)
  end

  def test_food_rejuvanation_level
    assert_equal(2, @food.rejuvanation_level)
  end

end
