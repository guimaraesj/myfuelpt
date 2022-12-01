class Vehicle < ApplicationRecord
  belongs_to :user
  # when we have the API we can select Simples, Especial & B15 are Gasoleo
  has_many :fuel_types, through: :vehicle_fuel_types
  validates :real_consumption, presence: true
end
