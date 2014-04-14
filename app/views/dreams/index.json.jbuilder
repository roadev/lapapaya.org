json.array!(@dreams) do |dream|
  json.extract! dream, :id, :dream, :whant, :offer, :need
  json.url dream_url(dream, format: :json)
end
