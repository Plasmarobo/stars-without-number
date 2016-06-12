json.array!(@item_slots) do |item_slot|
  json.extract! item_slot, :id, :item_id, :character_id, :uses, :notes, :gm_notes
  json.url item_slot_url(item_slot, format: :json)
end
