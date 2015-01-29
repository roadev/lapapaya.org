class CreateCanvasLadoIzquierdos < ActiveRecord::Migration
  def change
    create_table :canvas_lado_izquierdos do |t|
      t.string :sector
      t.string :problema_general
      t.string :solucion
      t.string :producto1
      t.string :producto2
      t.string :producto3
      t.string :actividad_clave1
      t.string :actividad_clave2
      t.string :actividad_clave3
      t.string :recurso_clave1
      t.string :recurso_clave2
      t.string :recurso_clave3

      t.timestamps
    end
  end
end
