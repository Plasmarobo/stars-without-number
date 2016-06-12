json.array!(@faction_turns) do |faction_turn|
  json.extract! faction_turn, :id, :turn_number, :game_id, :order
  json.url faction_turn_url(faction_turn, format: :json)
end
