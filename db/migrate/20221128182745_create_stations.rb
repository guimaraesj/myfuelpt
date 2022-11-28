class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :address
      t.float :lat
      t.float :lng
      t.string :type
      t.string :brand
      t.text :services
      t.text :schedule
      t.string :fuel_types
      t.decimal :price
      t.datetime :api_update

      t.timestamps
    end
  end
end
