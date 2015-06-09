json.array!(@etapas) do |etapa|
  json.extract! etapa, :id, :etapa1, :indicador1, :etapa2, :indicador2, :etapa3, :indicador3
  json.url etapa_url(etapa, format: :json)
end
