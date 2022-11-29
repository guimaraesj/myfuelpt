class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def show
    authorize @product # pundit authorization to anyone
  end

end
