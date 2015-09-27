class SpotifyController < ApplicationController
  def index
    render json: Spotify.new().artist_name
  end
end
