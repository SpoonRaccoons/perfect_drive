class SpotifyController < ApplicationController
  def index
    render json: Spotify.new().display
  end
end
