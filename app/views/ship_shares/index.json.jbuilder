json.array!(@ship_shares) do |ship_share|
  json.extract! ship_share, :id, :character_id, :ship_id, :shares
  json.url ship_share_url(ship_share, format: :json)
end
