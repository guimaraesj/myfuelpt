class Discount < ApplicationRecord
  validates :brand, :quantity, :card, presence: true
end
