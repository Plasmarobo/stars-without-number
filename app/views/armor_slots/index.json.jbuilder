json.array!(@armor_slots) do |armor_slot|
  json.extract! armor_slot, :id, :armor_id, :character_id, :ammo_slot_id, :item_id
  json.url armor_slot_url(armor_slot, format: :json)
end
