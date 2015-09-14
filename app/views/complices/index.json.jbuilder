json.array!(@complices) do |complice|
  json.extract! complice, :id, :dream_id, :tags, :reason, :giving
  json.url complice_url(complice, format: :json)
end
