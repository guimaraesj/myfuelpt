class StationsFuelTypesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
    # Pundit: allow-list approach
    # after_action :verify_authorized, except: %i[index], unless: :skip_pundit?
    # after_action :verify_policy_scoped, only: %i[index], unless: :skip_pundit?

  def index
    # @fuel_type = FuelType.find(params[:fuel_type_id])
    @fuel_types = FuelType.all
    if params[:fuel_type_id].present?
      @fuel_type = FuelType.find(params[:fuel_type_id])
    else
      @fuel_type = FuelType.find_by(name: "Simple Diesel")
    end
    @stations_fuel_types = StationsFuelType.includes(:station).where(fuel_type: @fuel_type)

    if user_signed_in? # if user is signed_in he may see prices with discounts.
      @stations_fuel_types = @stations_fuel_types.map do |sft|
        if current_user.discounts.any? # even if user is signed_in he may not have any discounts added
          prices = current_user.discounts.map do |discount|
            if discount.brand == sft.station.brand # desconto aplica-se só à brand
              sft.price_per_l -= discount.quantity
              sft.price_per_l
            end
          end
          sft.price_per_l = prices.min if prices.any? #convert prices into array
        end
        sft
      end
    end
    # método de sort de array:
    @sft_by_price = @stations_fuel_types.sort_by { |sft| sft.price_per_l }

    if params[:user_lat] && params[:user_lng]
      @stations_fuel_types.each do |sft|
        sft.distance = Geocoder::Calculations.distance_between([params[:user_lat], params[:user_lng]], [sft.station.latitude, sft.station.longitude])
        sft.distance = sft.distance.round(2)
      end
      @sft_by_distance = @stations_fuel_types.sort_by { |sft| sft.distance } # usar essa variavel para aplicar o botão by_distance
      # @stations_fuel_types = @stations_fuel_types.sort_by { |sft| sft.distance }
    end

    respond_to do |format|
      format.html
      format.json
    end
  end
end
