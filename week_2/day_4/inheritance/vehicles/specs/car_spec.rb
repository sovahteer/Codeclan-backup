require 'minitest/autorun'
require 'minitest/rg'
require_relative '../car'

class TestCar < MiniTest::Test

  def setup()
    @car = Car.new()
  end

  def test_car_can_start_engine()
      assert_equal("inferior sound to motorcycles.", @car.start_engine)
  end

  def test_car_has_number_of_wheels()
    assert_equal(4, @car.number_of_wheels)

  end

end
