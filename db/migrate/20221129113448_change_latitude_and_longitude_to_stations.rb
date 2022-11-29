class ChangeLatitudeAndLongitudeToStations < ActiveRecord::Migration[7.0]
  def change
    rename_column :stations, :lat, :latitude
    rename_column :stations, :lng, :longitude
  end
end
