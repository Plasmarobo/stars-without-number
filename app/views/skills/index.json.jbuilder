json.array!(@skills) do |skill|
  json.extract! skill, :id, :name, :description, :gm_notes
  json.url skill_url(skill, format: :json)
end
