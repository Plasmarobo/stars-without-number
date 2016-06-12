json.array!(@mental_save_progressions) do |mental_save_progression|
  json.extract! mental_save_progression, :id, :character_class_id, :level, :mental_save
  json.url mental_save_progression_url(mental_save_progression, format: :json)
end
