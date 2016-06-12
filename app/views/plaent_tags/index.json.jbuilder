json.array!(@plaent_tags) do |plaent_tag|
  json.extract! plaent_tag, :id, :planet_id, :tag_id
  json.url plaent_tag_url(plaent_tag, format: :json)
end
