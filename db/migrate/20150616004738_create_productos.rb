class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :Producto
      t.integer :Unidades

      t.timestamps
    end
  end
end
