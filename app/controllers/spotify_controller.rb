class SpotifyController < ApplicationController
  def index
    render json: Spotify.new().duration
  end
end
