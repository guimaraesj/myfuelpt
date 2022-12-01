class StationsFuelTypesController < ApplicationController
  #skip_before_action :authenticate_user!, only: [:index]
    # Pundit: allow-list approach
    #after_action :verify_authorized, except: %i[index], unless: :skip_pundit?
    #after_action :verify_policy_scoped, only: %i[index], unless: :skip_pundit?

  def index
    @fuel_type = FuelType.find(params[:fuel_type_id])
    #@fuel_type = FuelType.all
    @stations_fuel_types = StationsFuelType.where(fuel_type: params[:fuel_type_id])
  end
end
