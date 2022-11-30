class StationsFuelTypesController < ApplicationController
  def index
    @fuel_type = FuelType.find(params[:fuel_type_id])
    @stations_fuel_types = StationsFuelType.where(fuel_type: params[:fuel_type_id])
  end
end
