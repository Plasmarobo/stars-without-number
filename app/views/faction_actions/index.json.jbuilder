json.array!(@faction_actions) do |faction_action|
  json.extract! faction_action, :id, :faction_turn_id, :free, :action
  json.url faction_action_url(faction_action, format: :json)
end
