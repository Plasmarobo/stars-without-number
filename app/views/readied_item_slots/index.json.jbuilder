json.array!(@readied_item_slots) do |readied_item_slot|
  json.extract! readied_item_slot, :id, :character_id, :item_slot_id
  json.url readied_item_slot_url(readied_item_slot, format: :json)
end
