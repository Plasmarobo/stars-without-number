json.array!(@armors) do |armor|
  json.extract! armor, :id, :name, :description, :ac, :ac_bonus, :damage_reduction, :cost, :tech_level, :encumberance, :ammo_id, :ammo_efficiency
  json.url armor_url(armor, format: :json)
end
