class CreateVehicleFuelTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_fuel_types do |t|
      t.references :vehicle, null: false, foreign_key: true
      t.references :fuel_type, null: false, foreign_key: true
      t.timestamps
    end
  end
end
