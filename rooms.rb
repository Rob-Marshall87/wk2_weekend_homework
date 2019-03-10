class Rooms
  attr_reader :name, :capacity, :entry_fee, :songs
  def initialize(name, capacity, guests, songs, entry_fee)
    @name = name
    @capacity = capacity
    @guests = guests
    @songs = songs
    @entry_fee = entry_fee
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

  def song_titles(songs)
    song_titles = []
    # @songs.map { |song| song[:name] }
    for song in songs
      song_titles << song[:title]
    end
    return song_titles
  end

  # def has_room_got_favourite_song(room, guest)
  #   # binding.pry
  #   song_names = room.songs.map { |song| song[:title] }
  #   p song_names
  #   # binding.pry
  #   if room_song_names.include?(guest.favourite_song) == true
  #     return "Whoo!"
  #   else
  #     return "BOO!"
  #   end
  # end

end
