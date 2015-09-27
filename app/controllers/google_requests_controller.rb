class GoogleRequestsController < ApplicationController
  def search
    render json: TravelTime.new().duration
    # This will most likely end up as the only controller we need.  I think we'll be able to call the models and render the output all in this controller.
  end
end
