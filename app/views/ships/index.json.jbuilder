json.array!(@ships) do |ship|
  json.extract! ship, :id, :hp, :free_power, :free_mass, :ship_hull_id
  json.url ship_url(ship, format: :json)
end
