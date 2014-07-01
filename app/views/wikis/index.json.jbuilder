json.array!(@wikis) do |wiki|
  json.extract! wiki, :id, :title, :abstract, :content, :tags
  json.url wiki_url(wiki, format: :json)
end
