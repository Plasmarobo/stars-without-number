json.array!(@ship_weapon_slots) do |ship_weapon_slot|
  json.extract! ship_weapon_slot, :id, :ship_weapon_id, :ship_id, :ammo_slot_id
  json.url ship_weapon_slot_url(ship_weapon_slot, format: :json)
end
