json.array!(@pois) do |poi|
  json.extract! poi, :id, :name, :description, :orbit_id, :gm_notes, :image_src
  json.url poi_url(poi, format: :json)
end
