json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :Nombre, :Razon_social, :Nit, :Direccion, :Telefono, :Nombre_representante, :Persona_contacto, :Pedido
  json.url pedido_url(pedido, format: :json)
end
