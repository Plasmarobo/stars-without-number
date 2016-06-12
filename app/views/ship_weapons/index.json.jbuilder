json.array!(@ship_weapons) do |ship_weapon|
  json.extract! ship_weapon, :id, :name, :description, :cost, :damage, :power, :mass, :hardpoint_use, :min_hull_class, :tech_level, :ap, :clumsy, :ammo_id, :phase_rating, :cloud
  json.url ship_weapon_url(ship_weapon, format: :json)
end
