json.array!(@psi_disciplines) do |psi_discipline|
  json.extract! psi_discipline, :id, :name, :description, :cost, :system_strain, :attack, :defense, :level
  json.url psi_discipline_url(psi_discipline, format: :json)
end
