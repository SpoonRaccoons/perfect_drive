class GoogleRequestsController < ApplicationController
  def search
    render json: TravelTime.new().duration
  end
end
