class CreateStationsFuelTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :stations_fuel_types do |t|
      t.references :fuel_type, null: false, foreign_key: true
      t.references :station, null: false, foreign_key: true
      t.float :price_per_l
      t.datetime :update_date
      t.timestamps
    end
  end
end
