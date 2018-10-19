require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Loading Bar", 100)
    @drink1 = Drink.new("cider", 3, 4)
    @drink2 = Drink.new("wine", 5, 1)
    @drink3 = Drink.new("rum & coke", 4, 3)
    @drink4 = Drink.new("gin & tonic", 6, 2)
    # @stock = [@drink1, @drink2, @drink3, @drink4]
    @stock = [
      @drink1 = {
        name: "cider",
        price: 3,
        alcohol_level: 4
      },
      @drink2 = {
        name: "wine",
        price: 5,
        alcohol_level: 1
      }
    ]
    @euan = Customer.new("Euan", 100, 28, 10)
  end

  def test_name_pub
    assert_equal("Loading Bar", @pub.name)
  end

  def test_till_count
    actual= @pub.till_count
    assert_equal(0, actual)
  end

  def test_add_drink_in_bar
    @pub.add_drink_in_bar(@drink1)
    assert_equal(1, @pub.drinks.count)
  end

  # def test_add_all_drinks
  #   @pub.add_all_drinks(@shelf)
  #   assert_equal(4, @pub.drinks.count)
  # end
  def test_sell_drink
    @pub.add_drink_in_bar(@drink1)
    @pub.sell_drink()
    actual=@pub.drinks.count
    assert_equal(0, actual)
  end

  def test_add_money_to_pub
    @pub.add_money_to_pub(@drink1.price)
    actual=@pub.till
    assert_equal(3, actual)
  end
  #
  def test_check_customer_age
    actual = @euan.age
    assert_equal(28, actual)
  end

  def test_check_drunkenness
    actual = @euan.drunkenness
    assert_equal(10, actual)
  end

  def test_get_barred
    actual = @pub.get_barred(@euan.drunkenness)
    assert_equal("You're barred!", actual)
  end


end #end of class
