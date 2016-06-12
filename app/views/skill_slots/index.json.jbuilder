json.array!(@skill_slots) do |skill_slot|
  json.extract! skill_slot, :id, :character_id, :background_id, :training_id, :skill_id, :rank
  json.url skill_slot_url(skill_slot, format: :json)
end
