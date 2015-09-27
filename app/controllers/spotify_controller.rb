class SpotifyController < ApplicationController
  def index
    render json: Spotify.new().track_list
  end
end
