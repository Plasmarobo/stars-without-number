json.array!(@factions) do |faction|
  json.extract! faction, :id, :xp, :name, :planet_id, :force, :cunning, :wealth, :faccreds, :goal_id, :goal_progress, :goal_requirement, :user_id
  json.url faction_url(faction, format: :json)
end
