class Spotify

  def initialize
    @track_list = track_list
  end

  def track_list
    HTTParty.get("https://api.spotify.com/v1/search?q=drive&type=track&limit=5")
  end

  def artist_name
    @get_item["tracks"]["items"][0]["artists"][0]["name"]
  end

  def artist_uri
    @get_item["tracks"]["items"][0]["artists"][0]["id"]
  end

  def song_name
    @get_item["tracks"]["items"][0]["name"]
  end

  def song_duration
    @get_item["tracks"]["items"][0]["duration_ms"].to_i
  end

end
