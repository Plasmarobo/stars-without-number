json.array!(@locations) do |location|
  json.extract! location, :id, :planet_id, :satellite_id, :poi_id, :name, :description, :gm_notes
  json.url location_url(location, format: :json)
end
