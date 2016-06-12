json.array!(@satellites) do |satellite|
  json.extract! satellite, :id, :x, :y, :planet_id, :poi_id, :orbit_id, :description, :name, :gm_notes
  json.url satellite_url(satellite, format: :json)
end
