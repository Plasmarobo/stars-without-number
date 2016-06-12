json.array!(@backgrounds) do |background|
  json.extract! background, :id, :name, :description
  json.url background_url(background, format: :json)
end
