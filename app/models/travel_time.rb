class TravelTime
  def initialize
    @response = get_response
  end

  def display
    @response
  end

  private def get_response
    key = ENV['GOOGLE_MAPS_KEY']
    HTTParty.get("https://maps.googleapis.com/maps/api/distancematrix/json?origins=Vancouver+BC|Seattle&destinations=San+Francisco|Victoria+BC&mode=bicycling&language=fr-FR&key=#{key}")
  end
end
