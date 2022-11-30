class AddDiscountReferenceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :discount, foreign_key: true
  end
end
