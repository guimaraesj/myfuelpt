class StationsFuelTypesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
    # Pundit: allow-list approach
    #after_action :verify_authorized, except: %i[index], unless: :skip_pundit?
    #after_action :verify_policy_scoped, only: %i[index], unless: :skip_pundit?

  def index
    # @fuel_type = FuelType.find(params[:fuel_type_id])
    @fuel_types = FuelType.all
    if params[:fuel_type_id].present?
      @fuel_type = FuelType.find(params[:fuel_type_id])
    else
      @fuel_type = FuelType.find_by(name: "Gasóleo Simples")
    end
    @stations_fuel_types = StationsFuelType.where(fuel_type: @fuel_type)
  end
end
