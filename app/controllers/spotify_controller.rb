class SpotifyController < ApplicationController
  def index
    render json: Spotify.new().all_song_duration
  end
end
