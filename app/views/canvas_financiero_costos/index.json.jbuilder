json.array!(@canvas_financiero_costos) do |canvas_financiero_costo|
  json.extract! canvas_financiero_costo, :id, :personal, :alquiler, :costo_produccion, :costo_comercializacion
  json.url canvas_financiero_costo_url(canvas_financiero_costo, format: :json)
end
