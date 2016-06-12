json.array!(@orbits) do |orbit|
  json.extract! orbit, :id, :distance, :period, :angle, :index
  json.url orbit_url(orbit, format: :json)
end
