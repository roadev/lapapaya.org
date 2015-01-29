json.array!(@canvas_financiero_ingresos) do |canvas_financiero_ingreso|
  json.extract! canvas_financiero_ingreso, :id, :valor_venta_producto1, :valor_venta_producto2, :valor_venta_producto3
  json.url canvas_financiero_ingreso_url(canvas_financiero_ingreso, format: :json)
end
