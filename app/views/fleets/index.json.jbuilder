json.array!(@fleets) do |fleet|
  json.extract! fleet, :id, :system_id, :planet_id, :poi_id, :faction_id, :speed
  json.url fleet_url(fleet, format: :json)
end
