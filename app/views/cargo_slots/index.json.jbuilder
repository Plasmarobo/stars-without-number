json.array!(@cargo_slots) do |cargo_slot|
  json.extract! cargo_slot, :id, :ship_id, :cargo_id, :count, :notes, :gm_notes
  json.url cargo_slot_url(cargo_slot, format: :json)
end
