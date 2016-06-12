json.array!(@psi_discipline_sots) do |psi_discipline_sot|
  json.extract! psi_discipline_sot, :id, :character_id, :psi_discipline_id
  json.url psi_discipline_sot_url(psi_discipline_sot, format: :json)
end
