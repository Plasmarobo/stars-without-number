json.array!(@events) do |event|
  json.extract! event, :id, :title, :body, :x, :y, :planet_id, :system_id, :faction_id, :player_id, :npc_id, :ship_id, :fleet_id, :tags
  json.url event_url(event, format: :json)
end
