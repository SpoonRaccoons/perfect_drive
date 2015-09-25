class Spotify

  def initialize
    @get_item = get_item
    @get_track = get_track
  end

  def get_item
    HTTParty.get("https://api.spotify.com/v1/search?q=Dimmu+Borgir&type=artist&limit=1")
  end

  def display_all_info
    @get_item
  end

  def get_genre
    @get_item["artists"]["items"][0]["genres"][0]
  end

  def get_uri
    @get_item["artists"]["items"][0]["uri"]
  end

  def get_track
    track = get_item.get_uri
    HTTParty.get("https://api.spotify.com/v1/tracks/#{track}?market=")
  end

  def duration
    @get_track["duration_ms"]
  end

end
