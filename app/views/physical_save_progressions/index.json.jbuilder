json.array!(@physical_save_progressions) do |physical_save_progression|
  json.extract! physical_save_progression, :id, :character_class_id, :level, :physical_save
  json.url physical_save_progression_url(physical_save_progression, format: :json)
end
