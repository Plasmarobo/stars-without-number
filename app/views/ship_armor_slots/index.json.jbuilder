json.array!(@ship_armor_slots) do |ship_armor_slot|
  json.extract! ship_armor_slot, :id, :ship_armor_id, :ship_id
  json.url ship_armor_slot_url(ship_armor_slot, format: :json)
end
