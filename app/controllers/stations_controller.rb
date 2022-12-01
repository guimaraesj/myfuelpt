class StationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  # Pundit: allow-list approach
  #after_action :verify_authorized, except: %i[index show], unless: :skip_pundit?
  #after_action :verify_policy_scoped, only: %i[index show], unless: :skip_pundit?

  def index
    @stations = Station.all
    #@stations = policy_scope(Station)
    @markers = @stations.geocoded.map do |station|
      {
        lat: station.latitude,
        lng: station.longitude
      }
    end
  end

  def show
    #@station = policy_scope(Station) # Why do I need this? Am I not skipping on top of page?
    @station = Station.find(params[:id])
    @marker = "{
        \"lat\": #{@station.latitude},
        \"lng\": #{@station.longitude}
      }"
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
