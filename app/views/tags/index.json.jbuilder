json.array!(@tags) do |tag|
  json.extract! tag, :id, :name, :description, :gm_notes
  json.url tag_url(tag, format: :json)
end
