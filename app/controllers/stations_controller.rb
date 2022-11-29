class StationsController < ApplicationController
  def index
    @stations = Station.all
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
