class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :station_type
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
