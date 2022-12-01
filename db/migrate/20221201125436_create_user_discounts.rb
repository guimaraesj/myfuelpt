class CreateUserDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_discounts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :discount, null: false, foreign_key: true
      t.timestamps
    end
  end
end
