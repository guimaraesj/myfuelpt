class VehicleFuelType < ApplicationRecord
  belongs_to :vehicle
  belongs_to :fuel_type
end
