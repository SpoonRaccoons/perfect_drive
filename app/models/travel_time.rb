class TravelTime
  def initialize
    @response = get_response
  end

  def display
    @response
  end

  private def get_response
    key = ENV['GOOGLE_MAPS_KEY']
    HTTParty.get("https://maps.googleapis.com/maps/api/distancematrix/json?origins=Hillsborough+NC&destinations=Durham+NC&key=#{key}")
  end

  def duration
    @response["rows"][0]["elements"][0]["duration"]["value"].to_i * 100
  end
end
