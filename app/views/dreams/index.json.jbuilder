json.array!(@dreams) do |dream|
  json.extract! dream, :id, :dream
  json.url dream_url(dream, format: :json)
end
