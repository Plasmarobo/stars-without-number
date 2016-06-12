json.array!(@technology_save_progressions) do |technology_save_progression|
  json.extract! technology_save_progression, :id, :character_class_id, :level, :technology_save
  json.url technology_save_progression_url(technology_save_progression, format: :json)
end
