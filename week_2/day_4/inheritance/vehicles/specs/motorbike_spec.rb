require'minitest/autorun'
require'minitest/rg'
require_relative'../motorbike'

class TestMotorbike < MiniTest::Test

  def setup()
    @motorbike = Motorbike.new()
  end

  def test_motorbike_can_start_engine()
      assert_equal("Vrrrmm! I am a motorbike", @motorbike.start_engine)
  end

  def test_motorbike_has_number_of_wheels()
    assert_equal(2, @motorbike.number_of_wheels)
  end

end
