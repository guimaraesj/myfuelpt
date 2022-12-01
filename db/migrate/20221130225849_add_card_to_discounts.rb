class AddCardToDiscounts < ActiveRecord::Migration[7.0]
  def change
    add_column :discounts, :card, :string
    add_column :discounts, :description, :text
    add_column :discounts, :discount_type, :string
    remove_column :discounts, :expiry_date, :date
  end
end
