class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :zip_code
      t.string :district
      t.float :latitude
      t.float :longitude
      t.string :station_type
      t.string :brand
      t.text :services#, array: true
      t.text :schedule#, array: true
      t.timestamps
    end
    #add_index :stations, :services, using: 'gin'
    #add_index :stations, :schedule, using: 'gin'
  end
end
