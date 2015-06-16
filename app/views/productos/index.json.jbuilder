json.array!(@productos) do |producto|
  json.extract! producto, :id, :Producto, :Unidades
  json.url producto_url(producto, format: :json)
end
