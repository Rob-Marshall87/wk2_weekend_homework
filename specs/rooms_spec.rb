require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestRooms < Minitest::Test
  def setup
    @guest1 = Guests.new("John", 100, "Wonderwall")
    @guest2 = Guests.new("James", 50, "Shake it off")
    @guest3 = Guests.new("John", 100, "Wonderwall")
    @guest4 = Guests.new("John", 100, "Wonderwall")
    @guest5 = Guests.new("John", 100, "Wonderwall")

    @song1 = Songs.new("Don't Stop Believing", "Journey", "rock")
    @song2 = Songs.new("Sweet Caroline", "Neil Diamond", "rock")
    @song3 = Songs.new("Bohemian Rhapsody", "Queen", "rock")
    @song4 = Songs.new("Wonderwall", "Oasis", "rock")

    @guests = []

    @songs = [@song1, @song2, @song3, @song4]

    @room1 = Rooms.new("Room 1", 5, @guests, @songs, 10)
  end

  def test_room_has_name
    assert_equal("Room 1", @room1.name)
  end

  def test_room_capacity
    assert_equal(5, @room1.capacity)
  end

  def test_entrance_fee
    assert_equal(10, @room1.entry_fee)
  end

  def test_add_guest__enough_capacity
    assert_equal(0, @guests.length)
    @room1.add_guest_to_room(@guest1)
    assert_equal(1, @guests.length)
  end

  def test_add_guest__not_enough_capacity
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest1)
    assert_equal("Not enough capacity.", @room1.add_guest_to_room(@guest1))
  end

  def test_checkout_guest__guest_checked_in
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest3)
    @room1.add_guest_to_room(@guest4)
    assert_equal(4, @guests.length)
    @room1.checkout_guest(@guest1)
    assert_equal(3, @guests.length)
  end

  def test_checkout_guest__guest_not_there
    @room1.checkout_guest(@guest1)
    assert_equal("Guest not in this room.", @room1.checkout_guest(@guest1))
  end

  # def test_list_of_song_titles
  #   assert_equal(["Don't Stop Believing", "Sweet Caroline", "Bohemian Rhapsody", "Wonderwall"], @room1.song_titles(@songs))
  # end

  # def test_has_room_got_favourite_song__true
  #   assert_equal("Whoo!", @guest1.has_room_got_favourite_song(@room1, self))
  # end

  # def test_has_room_got_favourite_song__false
  #   assert_equal("BOO!", @guest2.has_room_got_favourite_song(@room1, self))
  # end

end
