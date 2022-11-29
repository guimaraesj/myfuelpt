class StationsController < ApplicationController
  def index
    @stations = Station.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @stations.geocoded.map do |station|
      {
        lat: station.latitude,
        lng: station.longitude
      }
    end
  end

  def show
    # authorize @product # pundit authorization to anyone
  end

  def near
    # @stations = Station.near
    # @markers = @stations.geocoded.map do |station|
    # {
    #   lat: station.latitude,
    #   lng: station.longitude
    # }
    @request = request
    @latitude = request.location.latitude
    @longitude = request.location.longitude
    # raise
  end
end
