class CreateEtapas < ActiveRecord::Migration
  def change
    create_table :etapas do |t|
      t.string :etapa1
      t.integer :indicador1
      t.string :etapa2
      t.integer :indicador2
      t.string :etapa3
      t.integer :indicador3

      t.timestamps
    end
  end
end
