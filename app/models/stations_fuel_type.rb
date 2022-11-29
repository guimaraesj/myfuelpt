class StationsFuelType < ApplicationRecord
  belongs_to :fuel_type
  belongs_to :station
end
