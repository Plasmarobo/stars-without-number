json.array!(@level_progressions) do |level_progression|
  json.extract! level_progression, :id, :character_class_id, :level, :xp_requirement
  json.url level_progression_url(level_progression, format: :json)
end
