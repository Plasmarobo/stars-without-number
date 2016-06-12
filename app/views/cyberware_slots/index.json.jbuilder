json.array!(@cyberware_slots) do |cyberware_slot|
  json.extract! cyberware_slot, :id, :cyberware_id, :character_id
  json.url cyberware_slot_url(cyberware_slot, format: :json)
end
