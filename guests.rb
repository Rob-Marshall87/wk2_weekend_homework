class Guests
attr_reader :name
  def initialize(name, money)
    @name = name
    @money = money
  end

  def check_money
    return @money
  end

end
