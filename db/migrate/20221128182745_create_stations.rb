class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :nome
      t.string :morada
      t.string :localidade
      t.string :cod_postal
      t.string :distrito
      t.float :latitude
      t.float :longitude
      t.string :tipo_posto
      t.string :marca
      t.text :servicos#, array: true
      t.text :horario#, array: true
      t.timestamps
    end
    #add_index :stations, :servicos, using: 'gin'
    #add_index :stations, :horario, using: 'gin'
  end
end
