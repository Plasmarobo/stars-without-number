json.array!(@evasion_save_progressions) do |evasion_save_progression|
  json.extract! evasion_save_progression, :id, :character_class_id, :level, :evasion_save
  json.url evasion_save_progression_url(evasion_save_progression, format: :json)
end
