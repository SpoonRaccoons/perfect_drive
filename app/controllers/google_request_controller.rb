class GoogleRequestController < ApplicationController
  def search
    render json: TravelTime.new(params[:orig], params[:dest])
    # This will most likely end up as the only controller we need.  I think we'll be able to call the models and render the output all in this controller.
  end
end
