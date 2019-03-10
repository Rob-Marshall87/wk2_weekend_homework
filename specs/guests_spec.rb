require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../rooms')
require_relative('../songs')

class TestGuests < Minitest::Test
  def setup
    @guest1 = Guests.new("John", 100, "Wonderwall")
    @guest2 = Guests.new("James", 50, "Shake it off")

    @song1 = Songs.new("Don't Stop Believing", "Journey", "rock")
    @song2 = Songs.new("Sweet Caroline", "Neil Diamond", "rock")
    @song3 = Songs.new("Bohemian Rhapsody", "Queen", "rock")
    @song4 = Songs.new("Wonderwall", "Oasis", "rock")

    @songs = [@song1, @song2, @song3, @song4]


    @room1 = Rooms.new("Room 1", 5, @guests, @songs, 10)
  end

  def test_guest_has_name
    assert_equal("John", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(100, @guest1.check_money)
  end

  def test_guest_has_favourite_song
    assert_equal("Wonderwall", @guest1.favourite_song)
  end

  def test_remove_money
    @guest1.remove_money(5)
    assert_equal(95, @guest1.check_money)
  end

  def test_pay_fee_for_room
    @guest1.pay_fee_for_room(@room1)
    assert_equal(90, @guest1.check_money)
  end

  # def test_room_has_favourite_song__true
  #   assert_equal("Whoo!", @guest1.has_room_got_favourite_song(@room1))
  # end
  #
  # def test_room_has_favourite_song__false
  #   assert_equal("BOO!", @guest2.has_room_got_favourite_song(@room1))
  # end



end
