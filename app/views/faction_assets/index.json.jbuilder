json.array!(@faction_assets) do |faction_asset|
  json.extract! faction_asset, :id, :maintained, :disabled, :asset_id, :hp, :faction_id, :gm_notes, :notes
  json.url faction_asset_url(faction_asset, format: :json)
end
