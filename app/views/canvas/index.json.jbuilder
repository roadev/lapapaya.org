json.array!(@canvas) do |canva|
  json.extract! canva, :id, :cliente1, :canal1, :problema1, :cliente2, :canal2, :problema2, :cliente3, :canal3, :problema3
  json.url canva_url(canva, format: :json)
end
