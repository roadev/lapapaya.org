class CreateCanvasFinancieroCostos < ActiveRecord::Migration
  def change
    create_table :canvas_financiero_costos do |t|
      t.integer :personal
      t.integer :alquiler
      t.integer :costo_produccion
      t.integer :costo_comercializacion

      t.timestamps
    end
  end
end
