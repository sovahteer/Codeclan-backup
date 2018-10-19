require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')

class TestPerson < MiniTest::Test

  # Create a new instance of the Person class before each test
  def setup
    @person = Person.new("Vicky", 29)
  end

  # Test that the getter gets the name of the person
  def test_name
    assert_equal("Vicky", @person.name())
  end

  # Test that the getter gets the age of the person
  def test_age
    assert_equal(29, @person.age())
  end

end
