json.array!(@ship_hulls) do |ship_hull|
  json.extract! ship_hull, :id, :name, :description, :cost, :max_hp, :min_crew, :max_crew, :max_power, :speed, :armor, :ac, :max_mass, :hardpoints, :hull_class, :manufacturerer
  json.url ship_hull_url(ship_hull, format: :json)
end
