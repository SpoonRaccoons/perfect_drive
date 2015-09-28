class Playlist
  # def initialize(orig, dest)
    @jabberwocky = TravelTime.new(orig, dest)
    @track_list = Spotify.new()
    @playlist = []
    @play_time = []
    @artist_list = []
  # end

  i = 0
  playtime = 0

  while @jabberwocky.duration > playtime do
    playtime += @track_list.all_song_duration[i]
    @artist_list << @track_list.all_artist_name[i]
    @playlist << @track_list.all_song_names[i]
    @play_time << @track_list.all_song_duration[i]
    i += 1
  end

  # trip_duration = TravelTime.new(params[:origins], params[:desitinations]) Create new TravelTime object.
  #
  # def search
  #   @jabberwocky = TravelTime.new(params[:origins], params[:desitinations])
  #   @track_list = Spotify.new()
  #
  #   i = 0
  #
  #   playtime = 0
  #
  #   while @jabberwocky > playtime do
  #     playtime += @track_list.all_song_duration[i]
  #     @final << @track_list[i]
  #     playtime += @track_list[i]["track_time"]
  #     i += 1
  #   end
  #
  #   j = 0
  #
  #   while @track_list.length > j
  #   {
  #     @track_list.all_song_names[j]
  #     @track_list.all_song_durations[j]
  #   },
  #   end
  # end
  #
  # def search
  #   @jabberwocky = TravelTime.new(params[:origins], params[:desitinations])
  # end
  # Create new sample set of songs object using Ashley's code.
  # Would probably be best as a hash of songs that could be randomly pulled from.
  # Each hash item would probably be { artist => name, album => name, track => name, track_length => milliseconds }
  # while trip_duration > song_time_total
  #   playlist << track_item{artist, album, title, length}
  # shovel one hash item from Ashleys hash of hashes (or array of hashes) into a playlist.
  #   song_time_total += track_item{length}
  # end

end
