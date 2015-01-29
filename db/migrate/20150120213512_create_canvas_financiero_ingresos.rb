class CreateCanvasFinancieroIngresos < ActiveRecord::Migration
  def change
    create_table :canvas_financiero_ingresos do |t|
      t.integer :valor_venta_producto1
      t.integer :valor_venta_producto2
      t.integer :valor_venta_producto3

      t.timestamps
    end
  end
end
