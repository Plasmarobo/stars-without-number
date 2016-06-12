json.array!(@ship_armors) do |ship_armor|
  json.extract! ship_armor, :id, :name, :description, :cost, :power, :mass, :min_hull_class, :tech_level, :ac_bonus, :ac, :speed_penalty, :ap_reduction, :evasion_chance, :phase_reduction, :bonus_hp
  json.url ship_armor_url(ship_armor, format: :json)
end
