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
      @fuel_type = FuelType.find_by(name: "Gasóleo Simples")
    end
    @stations_fuel_types = StationsFuelType.where(fuel_type: @fuel_type)

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
    @stations_fuel_types.sort_by! { |sft| sft.price_per_l }
  end
end
