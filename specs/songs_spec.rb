require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')

class TestSongs < Minitest::Test
  def setup
    @song1 = Songs.new("Don't Stop Believing", "Journey", "rock")
  end

  def test_has_song_got_name
    assert_equal("Don't Stop Believing", @song1.title)
  end

def test_song_has_artist
  assert_equal("Journey", @song1.artist)
end

def test_song_has_genre
  assert_equal("rock", @song1.genre)
end

end
