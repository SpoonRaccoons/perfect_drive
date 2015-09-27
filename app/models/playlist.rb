class Playlist
  # trip_duration = TravelTime.new(params[:origins], params[:desitinations]) Create new TravelTime object.
  def initialize
    @track_list = Spotify.new()
  end

  def populate
    i = 0
    while @jabberwocky > playtime do i
      @final << @track_list[i]
      playtime += @track_list[i]["track_time"]
      i += 1
    end
  end

  

  def search
    @jabberwocky = TravelTime.new(params[:origins], params[:desitinations])
  end
  # Create new sample set of songs object using Ashley's code.
  # Would probably be best as a hash of songs that could be randomly pulled from.
  # Each hash item would probably be { artist => name, album => name, track => name, track_length => milliseconds }
  # while trip_duration > song_time_total
  #   playlist << track_item{artist, album, title, length}
  # shovel one hash item from Ashleys hash of hashes (or array of hashes) into a playlist.
  #   song_time_total += track_item{length}
  # end

end
