json.array!(@planet_tags) do |planet_tag|
  json.extract! planet_tag, :id, :planet_id, :tag_id
  json.url planet_tag_url(planet_tag, format: :json)
end
