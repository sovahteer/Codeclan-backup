require_relative 'vehicle'
class Motorbike < Vehicle
  def initialize
    super(2)
  end
  def start_engine
    vehicle_start = super()
    return vehicle_start + " I am a motorbike"
  end
end
