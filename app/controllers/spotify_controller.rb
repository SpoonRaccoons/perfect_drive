class SpotifyController < ApplicationController
  def index
    render json: Spotify.new().get_genre
  end
end
