class CreateCanvasLadoDerechos < ActiveRecord::Migration
  def change
    create_table :canvas_lado_derechos do |t|
      t.string :propuesta_de_valor
      t.string :tratamiento_con_el_cliente
      t.string :canales
      t.string :segmento_cliente1
      t.string :segmento_cliente22
      t.string :segmento_cliente3
      t.string :stakeholder1
      t.string :stakeholder2
      t.string :stakeholder3
      t.string :indicador_clave

      t.timestamps
    end
  end
end
