require'minitest/autorun'
require'minitest/rg'
require_relative'../person'

class TestPerson < MiniTest::Test

  def setup()
    @person = Person.new("James", "Bond")
  end

  def test_talk
    assert_equal("The name's Bond... James Bond", @person.talk)
  end
end
