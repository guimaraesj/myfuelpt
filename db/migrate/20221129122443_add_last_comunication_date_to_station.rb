class AddLastComunicationDateToStation < ActiveRecord::Migration[7.0]
  def change
    add_column :stations, :last_comunication_date, :date
  end
end
