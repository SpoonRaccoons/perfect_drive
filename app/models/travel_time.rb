class TravelTime
  def initialize(origin, destination)
    @response = get_response
    @origin = origin
    @destination = destination
  end

  def display
    @response
  end

  private def get_response
    key = ENV['GOOGLE_MAPS_KEY']
    HTTParty.get("https://maps.googleapis.com/maps/api/distancematrix/json?origins=Hillsborough+NC&destinations=Wilmington+NC&key=#{key}")
    # HTTParty.get("https://maps.googleapis.com/maps/api/distancematrix/json?origins=#{@origin}&destinations=#{@destination}&key=#{key}")
  end

  def duration
    @response["rows"][0]["elements"][0]["duration"]["value"].to_i * 1000
  end
end
