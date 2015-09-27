class PlaylistController < ApplicationController
  def index
    render json: Playlist.new().search
  end
end
