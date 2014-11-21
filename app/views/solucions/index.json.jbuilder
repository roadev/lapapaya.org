json.array!(@solucions) do |solucion|
  json.extract! solucion, :id, :micropost_id, :solucion, :solucion
  json.url solucion_url(solucion, format: :json)
end
