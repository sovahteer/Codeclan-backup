require'minitest/autorun'
require'minitest/rg'
require_relative'../vehicle'

class TestVehicle < MiniTest::Test

  def setup()
    @vehicle = Vehicle.new()
  end

  def test_vehicle_can_start_engine()
      assert_equal("Vrrrmm!", @vehicle.start_engine)
  end

  def test_vehicle_has_number_of_wheels
    assert_equal(4, @car.number_of_wheels)

  end

end
