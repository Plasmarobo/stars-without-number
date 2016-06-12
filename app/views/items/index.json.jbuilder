json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :cost, :encumberance, :tech_level, :uses, :gm_notes
  json.url item_url(item, format: :json)
end
