class Musician
  attr_reader :name, :instrument

  def initialize (name, instrument)
    @name = name
    @instrument = instrument
  end

  def play_song(title)
    return " #{title} #{title}"
  end

end
