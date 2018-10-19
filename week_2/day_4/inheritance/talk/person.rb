class Person

  attr_reader :name, :surname
  def initialize(name, surname)
    @name = name
    @surname = surname
  end

  def talk
    return "The name's #{surname}... #{name} #{surname}"
  end
end
