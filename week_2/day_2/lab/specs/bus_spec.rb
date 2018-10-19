require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')

class TestBus < MiniTest::Test

  # Create a new instance of the Bus class before each test
  def setup
    @bus = Bus.new(22, "Leith")
    @person1 = Person.new("Bob", 55)
    @person2 = Person.new("Jane", 1)
    @person3 = Person.new("Ewan", 65)
  end

  # Test that the getter gets the route number
  def test_get_route_number()
    assert_equal(22, @bus.route_number)
  end

  # Test that the getter gets the destination
  def test_get_destination()
    assert_equal("Leith", @bus.destination)
  end

  # Test that the drive method returns a noise
  def test_drive()
    assert_equal("Brum brum", @bus.drive)
  end

  # Test that the count method returns the number of passengers
  def test_count_passsengers()
    actual = @bus.count_passengers()
    assert_equal(0, actual)
  end

  # Test that a passenger can be added to the passengers array and
  # Check by counting them
  def test_add_passenger()
    @bus.add_passenger(@person1)
    actual = @bus.count_passengers()
    assert_equal(1, actual)
  end

  # Test that a passenger can be removed from the passengers array.
  # Check by counting them

  def test_remove_passenger()
    @bus.add_passenger(@person1)
    @bus.remove_passenger(@person1)
    actual = @bus.count_passengers()
    assert_equal(0, actual)
  end

  # Test that all passengers are removed from the passengers array.

  def test_empty_passengers()
    @bus.add_passenger(@person1)
    @bus.add_passenger(@person2)
    @bus.empty_passengers()
    actual = @bus.count_passengers()
    assert_equal(0, actual)
  end

  def test_collect_passengers_from_stop__stop_empty()
    bus_stop = BusStop.new("Leith Walk")
    bus_stop.add_person(@person1)
    bus_stop.add_person(@person2)
    @bus.add_passenger(@person3)

    @bus.collect_from_stop(bus_stop)

    actual = bus_stop.count_queue()
    assert_equal(0, actual)
  end

  def test_collect_passengers_from_stop__bus_full()
    bus_stop = BusStop.new("Leith Walk")
    bus_stop.add_person(@person1)
    bus_stop.add_person(@person2)
    @bus.add_passenger(@person3)

    @bus.collect_from_stop(bus_stop)

    actual = @bus.count_passengers()

    assert_equal(3, actual)
  end

end
