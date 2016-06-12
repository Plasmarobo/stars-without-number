json.array!(@attack_bonus_progressions) do |attack_bonus_progression|
  json.extract! attack_bonus_progression, :id, :character_class_id, :level, :attack_bonus
  json.url attack_bonus_progression_url(attack_bonus_progression, format: :json)
end
