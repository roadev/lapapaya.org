class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :Nombre
      t.string :Razon_social
      t.integer :Nit
      t.string :Direccion
      t.integer :Telefono
      t.string :Nombre_representante
      t.string :Persona_contacto
      t.text :Pedido

      t.timestamps
    end
  end
end
