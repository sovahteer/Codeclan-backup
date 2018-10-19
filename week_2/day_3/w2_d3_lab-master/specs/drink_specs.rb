require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

  def setup()
    @drink = Drink.new("cider", 3, 4)
  end

  def test_name_drink
    assert_equal("cider", @drink.name)
  end

  def test_price_drink
    assert_equal(3, @drink.price)
  end

  def test_alcohol_level
    assert_equal(4, @drink.alcohol_level)
  end

end #end of class
