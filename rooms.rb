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

  

end
