json.array!(@vehicle_slots) do |vehicle_slot|
  json.extract! vehicle_slot, :id, :vehicle_id, :hp, :character_id, :ship_id
  json.url vehicle_slot_url(vehicle_slot, format: :json)
end
