class PlaylistController < ApplicationController
  def search
    @jabberwocky = TravelTime.new(params[:origins], params[:destinations])
    @track_list = Spotify.new()
    @playlist = []
    @play_time = []
    @artist_list = []

    i = 0
    playtime = 0

    while @jabberwocky.duration > playtime do
      playtime += @track_list.all_song_duration[i]
      @artist_list << @track_list.all_artist_name[i]
      @playlist << @track_list.all_song_names[i]
      @play_time << @track_list.all_song_duration[i]
      i += 1
    end

    render json: @playlist
    l = 0

    # json.playlist do |l|
    #   json.artist @artist_list[l]
    #   json.track @playlist[l]
    #   json.duration @play_time[l]
    # end
    # render json: @play_time
    # render json: @playlist
    # render json: @artist_list
  end
end
