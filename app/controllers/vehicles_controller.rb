class VehiclesController < ApplicationController
  before_action :set_vehicle, only: %i[edit update destroy]

  # Pundit: allow-list approach
  #after_action :verify_authorized, except: %i[index], unless: :skip_pundit?
  #after_action :verify_policy_scoped, only: %i[index], unless: :skip_pundit?

  def index
    @fuel_type = FuelType.find_by(name: "Simple Diesel")
    #@vehicles = policy_scope(Vehicle).where(user: current_user)
    @vehicles = Vehicle.all.where(user: current_user)
  end

  def new
    @vehicle = Vehicle.new
    #authorize @vehicle # pundit authorization to owner (see policy)
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    #authorize @vehicle # pundit authorization to owner (see policy)
    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to vehicles_path }
        format.json
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json
      end
    end
  end

  def edit
    # @vehicle = Vehicle.find(params[:id])
    #authorize @vehicle
  end

  def update
    #@vehicle = Vehicle.find(params[:id])
    @vehicle.update(vehicle_params)
    #authorize @vehicle # pundit authorization to owner (see policy)
    redirect_to vehicles_path
  end

  def destroy
    #@vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    #authorize @vehicle # pundit authorization to owner (see policy)
    redirect_to vehicles_path, status: :see_other
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:brand, :model, :real_consumption)
  end

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
  #new
  #create
  #edit
  #update
  #delete
end
