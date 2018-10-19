require'minitest/autorun'
require'minitest/rg'
require_relative'../medic'

class TestMedic < MiniTest::Test

  def setup()
    @medic = Medic.new("John", "Smith")
  end

  def test_heal
    assert_equal("I cast Heal!", @medic.heal)
  end

end
