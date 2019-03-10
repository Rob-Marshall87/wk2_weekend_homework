require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class TestGuests < Minitest::Test
  def setup
    @guest1 = Guests.new("John", 100)
  end

  def test_guest_has_name
    assert_equal("John", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(100, @guest1.check_money)
  end

end
