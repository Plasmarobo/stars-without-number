json.array!(@ammo_slots) do |ammo_slot|
  json.extract! ammo_slot, :id, :character_id, :weapon_slot_id, :ship_weapon_slot_id, :item_slot_id, :rounds_fired, :cargo_slot_id
  json.url ammo_slot_url(ammo_slot, format: :json)
end
