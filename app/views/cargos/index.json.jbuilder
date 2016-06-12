json.array!(@cargos) do |cargo|
  json.extract! cargo, :id, :item_id, :name, :description, :cost, :mass, :count
  json.url cargo_url(cargo, format: :json)
end
