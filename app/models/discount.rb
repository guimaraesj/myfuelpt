class Discount < ApplicationRecord
  validates :brand, :quantity, :card, presence: true
  has_many :user_discounts, dependent: :destroy
  #has_many :users #só para o mid-demo
end
