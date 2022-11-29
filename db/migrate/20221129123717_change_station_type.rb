class ChangeStationType < ActiveRecord::Migration[7.0]
  def change
    remove_column :stations, :type
    add_column :stations, :station_type, :string
  end
end
