json.array!(@npcs) do |npc|
  json.extract! npc, :id, :name, :character_id, :faction_id, :planet_id, :location_id, :satellite_id, :poi_id, :ship_id, :notes, :gm_notes, :description
  json.url npc_url(npc, format: :json)
end
