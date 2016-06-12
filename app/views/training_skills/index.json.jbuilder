json.array!(@training_skills) do |training_skill|
  json.extract! training_skill, :id, :training_id, :skill_id
  json.url training_skill_url(training_skill, format: :json)
end
