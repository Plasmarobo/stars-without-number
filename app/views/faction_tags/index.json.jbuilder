json.array!(@faction_tags) do |faction_tag|
  json.extract! faction_tag, :id, :faction_id, :tag_id
  json.url faction_tag_url(faction_tag, format: :json)
end
