json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :name, :description, :cost, :speed, :armor, :max_hp, :max_crew, :tech_level, :heavy_armor
  json.url vehicle_url(vehicle, format: :json)
end
