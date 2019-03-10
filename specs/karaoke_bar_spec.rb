require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar')

class TestKaraokeBar < Minitest::Test
  def setup
    @karaoke_bar = KaraokeBar.new()
  end

end
