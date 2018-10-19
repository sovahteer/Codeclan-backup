require_relative('person')
class BusStop

  attr_reader :name, :queue
  attr_writer :queue

  def initialize(name)
    @name = name
    @queue = []
  end

  def count_queue
    return @queue.length
  end

  def add_person(new_person)
    @queue << new_person
  end



end
