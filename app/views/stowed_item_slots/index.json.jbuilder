json.array!(@stowed_item_slots) do |stowed_item_slot|
  json.extract! stowed_item_slot, :id, :character_id, :item_slot_id
  json.url stowed_item_slot_url(stowed_item_slot, format: :json)
end
