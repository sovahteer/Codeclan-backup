require_relative('person.rb')
require_relative('bus_stop.rb')

class Bus

# Getters
attr_reader :route_number, :destination

# Initialize argument list
  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

# Class methods
  def drive()
    return "Brum brum"
  end

  def count_passengers()
    return @passengers.length
  end

  def add_passenger(new_passenger)
    @passengers << new_passenger
  end

  def remove_passenger(person)
    @passengers.delete(person)
  end

  def empty_passengers
    @passengers = []
  end

  def collect_from_stop(bus_stop)
    current_queue = bus_stop.queue
    @passengers.concat(current_queue)
    bus_stop.queue = []
  end

end
