class GoogleRequestsController < ApplicationController
  def search
    render json: TravelTime.new().display
  end
end
