json.array!(@faction_attacks) do |faction_attack|
  json.extract! faction_attack, :id, :attacker_id, :defender_id, :attack_roll, :defense_roll, :attack, :defense, :counter
  json.url faction_attack_url(faction_attack, format: :json)
end
