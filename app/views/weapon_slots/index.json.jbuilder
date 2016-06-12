json.array!(@weapon_slots) do |weapon_slot|
  json.extract! weapon_slot, :id, :weapon_id, :ammo_slot_id, :character_id, :vehicle_id, :item_id
  json.url weapon_slot_url(weapon_slot, format: :json)
end
