class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.save
    redirect_to vehicles_path
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(vehicle_params)
    redirect_to vehicles_path
  end

  def destroy
    @vehicles = Vehicles.find(params[:id])
    @vehicles.destroy
    redirect_to vehicles_path, status: :see_other
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:brand, :model, :real_consumption)
  end
  #new
  #create
  #edit
  #update
  #delete
end
