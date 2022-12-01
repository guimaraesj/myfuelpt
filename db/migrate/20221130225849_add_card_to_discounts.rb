class AddCardToDiscounts < ActiveRecord::Migration[7.0]
  def change
    add_column :discounts, :card, :string
    add_column :discounts, :description, :text
    remove_column :discounts, :expiry_date, :date
    add_column :discounts, :min_user_age, :string #new
    add_column :discounts, :max_user_age, :string #new
    add_column :discounts, :locations_applied, :string #new [Continente, Madeira, Açores, etc]
    add_column :discounts, :discount_type, :string # [Direto, Em Cartão Continente.. ]
  end
end
