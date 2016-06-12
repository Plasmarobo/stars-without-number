json.array!(@fleet_ships) do |fleet_ship|
  json.extract! fleet_ship, :id, :ship_id, :fleet_id
  json.url fleet_ship_url(fleet_ship, format: :json)
end
