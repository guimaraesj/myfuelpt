class FuelType < ApplicationRecord
  has_many :stations_fuel_types
  has_many :vehicles_fuel_types
end
