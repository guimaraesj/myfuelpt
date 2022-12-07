class StationsFuelType < ApplicationRecord
  belongs_to :fuel_type
  belongs_to :station

  attr_accessor :distance
end
