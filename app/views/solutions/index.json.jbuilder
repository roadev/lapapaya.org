json.array!(@solutions) do |solution|
  json.extract! solution, :id, :micropost_id, :content
  json.url solution_url(solution, format: :json)
end
