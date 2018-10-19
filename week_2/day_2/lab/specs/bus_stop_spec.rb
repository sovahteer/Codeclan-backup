require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop')

class BusStopTest < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Leith Walk")
    @person1 = Person.new("Consuela", 43)
  end

  def test_bus_stop_name
    assert_equal("Leith Walk", @bus_stop.name)
  end

  def test_count_queue
    actual = @bus_stop.count_queue
    assert_equal(0, actual)
  end

  def test_add_person_to_queue
    @bus_stop.add_person(@person1)
    actual = @bus_stop.count_queue()
    assert_equal(1, actual)
  end
end
