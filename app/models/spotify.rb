class Spotify

  def initialize
    @track_list = track_list
  end

  def track_list
    HTTParty.get("https://api.spotify.com/v1/search?q=%20genre:%22soul%22&type=track&limit=50")
  end

  def artist_name
    @track_list["tracks"]["items"][0]["artists"][0]["name"]
  end

  def all_artist_name
    all_artists = []
    (1..49).each do |artist|
      all_artists << @track_list["tracks"]["items"][0]["artists"][0]["name"]
    end
    all_artists
  end

  def song_name
    @track_list["tracks"]["items"][0]["name"]
  end

  def all_song_names
    song_names = []
    (1..49).each do |song|
      song_names << @track_list["tracks"]["items"][song]["name"]
    end
    song_names
  end

  def song_duration
    @track_list["tracks"]["items"][0]["duration_ms"].to_i
  end

  def all_song_duration
    song_duration = []
    (1..49).each do |duration|
      song_duration << @track_list["tracks"]["items"][duration]["duration_ms"]
    end
    song_duration
  end

end
