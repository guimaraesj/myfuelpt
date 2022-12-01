class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :vehicles, dependent: :destroy
  has_many :user_discounts
  has_many :discounts, through: :user_discounts
  validates :email, confirmation: true
end
