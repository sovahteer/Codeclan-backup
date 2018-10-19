require('minitest/autorun')
require('minitest/rg')
require_relative('../musician.rb')

class MusicianTest < MiniTest::Test

  def setup
    @jimi = Musician.new("Jimi Hendrixx", "Guitar")
    @freddy = Musician.new("Freddy Mercury", "Piano")
  end
  def test_musician_has_name
    assert_equal("Jimi Hendrixx", @jimi.name)
  end

  def test_instrument_has_instrument
    assert_equal("Guitar", @jimi.instrument)
  end

  def test_musician_can_play_song
    played_song = @jimi.play_song("Manic Depression")
    assert_equal("Briang Manic Depression Manic Depression", played_song)
  end

  def test_musician_can_play_song_freddy
    played_song = @freddy.play_song("Under Pressure")
    assert_equal("PlingPlong Under Pressure Under Pressure", played_song)
  end

end
