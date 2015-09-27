class PlaylistController < ApplicationController
  def search
    @jabberwocky = TravelTime.new(params[:origins], params[:desitinations])
    @track_list = Spotify.new()

    i = 0
    playtime = 0

    while @jabberwocky.duration > playtime do
      playtime += @track_list.all_song_duration[i]
      i += 1
    end

    j = 0

    while @track_list.length > j
    # {
    #   @track_list.all_song_names[j]
    #   @track_list.all_song_durations[j]
    # },
    end
  end
end
