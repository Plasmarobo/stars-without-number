json.array!(@weapons) do |weapon|
  json.extract! weapon, :id, :name, :description, :attack_attribute, :damage, :cost, :range, :ammo_efficiency, :ammo_id, :long_reload, :tech_level, :psitech, :encumberance, :heavy_weapon
  json.url weapon_url(weapon, format: :json)
end
