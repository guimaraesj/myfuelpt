class Changequantitytype < ActiveRecord::Migration[7.0]
  def change
    remove_column :discounts, :quantity, :string
    add_column :discounts, :quantity, :float
  end
end
