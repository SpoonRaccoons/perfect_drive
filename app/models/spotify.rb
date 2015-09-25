class Spotify

  def initialize
    @get_item = get_item
  end

  def display
    @get_item
  end

  def get_item
    HTTParty.get("https://api.spotify.com/v1/search?q=Dimmu+Borgir&type=artist,album&market=US&limit=1")
  end
end
