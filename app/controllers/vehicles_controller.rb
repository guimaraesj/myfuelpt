class VehiclesController < ApplicationController
  def index
    @vehicles = vehicle.all
  end
  #new
  #create
  #edit
  #update
  #delete
end
