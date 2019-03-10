class Rooms
  attr_reader :name, :capacity
  def initialize(name, capacity, guests, songs)
    @name = name
    @capacity = capacity
    @guests = guests
    @songs = songs
  end

  def add_guest_to_room(guest)
    if @guests.length <= @capacity
      @guests.push(guest)
    end
    return "Not enough capacity."
  end

  def checkout_guest(guest)
    if @guests.include?(guest) == true
      @guests.delete(guest)
    end
    return "Guest not in this room."
  end


end
