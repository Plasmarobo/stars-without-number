json.array!(@characters) do |character|
  json.extract! character, :id, :charater_class_id, :level, :hp, :max_hp, :pp, :max_pp, :xp, :skill_points, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :notes, :gm_notes, :player_id, :homeworld_id, :background_id, :training_id, :credits, :system_strain
  json.url character_url(character, format: :json)
end
