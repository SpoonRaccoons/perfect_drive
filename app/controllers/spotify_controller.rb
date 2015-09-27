class SpotifyController < ApplicationController
  def index
    Spotify.new()
  end
end
