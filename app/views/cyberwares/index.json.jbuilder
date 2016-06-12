json.array!(@cyberwares) do |cyberware|
  json.extract! cyberware, :id, :name, :description, :cost, :system_strain, :tech_level
  json.url cyberware_url(cyberware, format: :json)
end
