class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :brand
      t.string :quantity
      t.integer :min_fuel_l
      t.integer :max_fuel_l
      t.date :expiry_date

      t.timestamps
    end
  end
end
