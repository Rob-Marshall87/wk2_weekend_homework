require('pry')

class Guests
  attr_reader :name
  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def check_money
    return @money
  end

  def remove_money(cost)
    @money -= cost
  end

  def pay_fee_for_room(room)
    entrance_fee = room.entry_fee
    remove_money(entrance_fee)
  end

  def favourite_song
    return @favourite_song
  end

  # def has_room_got_favourite_song(room)
  #   binding.pry
  #   song_names = room.songs.map { |song| song[:title] }
  #   p song_names
  #   binding.pry
  #   if room_song_names.include?(guest.favourite_song) == true
  #     return "Whoo!"
  #   else
  #     return "BOO!"
  #   end
  # end

end
