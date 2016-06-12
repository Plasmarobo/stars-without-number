json.array!(@background_skills) do |background_skill|
  json.extract! background_skill, :id, :background_id, :skill_id
  json.url background_skill_url(background_skill, format: :json)
end
