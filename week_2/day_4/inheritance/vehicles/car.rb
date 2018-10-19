require_relative 'vehicle'
class Car < Vehicle

  def initialize(model)
    super(4)
    @model = model  
  end
  def start_engine
    return "inferior sound to motorcycles."
  end

end
