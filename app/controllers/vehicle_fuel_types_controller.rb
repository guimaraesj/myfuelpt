class VehicleFuelTypesController < ApplicationController
  def new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @vehicle_fuel_type = VehicleFuelType.new
  end

  def create
    @vehicle_fuel_type = VehicleFuelType.new(vehicle_fuel_type_params)
    @vehicle = Vehicle.find(params[:new_vehicle])
    @vehicle_fuel_type.vehicle = @vehicle
    @vehicle_fuel_type.save
    # redirect_to vehicles_path
  end

  private

  def vehicle_fuel_type_params
    params.require(:vehicle_fuel_type).permit(:fuel_type_id)
  end
end
