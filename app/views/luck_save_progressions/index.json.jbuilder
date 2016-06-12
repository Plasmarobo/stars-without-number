json.array!(@luck_save_progressions) do |luck_save_progression|
  json.extract! luck_save_progression, :id, :character_class_id, :level, :luck_save
  json.url luck_save_progression_url(luck_save_progression, format: :json)
end
