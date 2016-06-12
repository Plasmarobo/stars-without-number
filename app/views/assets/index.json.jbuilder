json.array!(@assets) do |asset|
  json.extract! asset, :id, :max_hp, :asset_type, :attribute_type, :cost, :upkeep, :tech_level, :asset_level, :attack_attribute, :defense_attribute, :attack_roll, :counter_roll, :special
  json.url asset_url(asset, format: :json)
end
