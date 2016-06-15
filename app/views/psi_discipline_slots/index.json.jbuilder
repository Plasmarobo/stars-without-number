json.array!(@psi_discipline_slots) do |psi_discipline_slot|
  json.extract! psi_discipline_slot, :id, :character_id, :psi_discipline_id
  json.url psi_discipline_slot_url(psi_discipline_slot, format: :json)
end
