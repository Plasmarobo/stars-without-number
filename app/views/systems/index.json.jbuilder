json.array!(@systems) do |system|
  json.extract! system, :id, :x, :y, :name, :star_size, :star_temperature, :description, :gm_notes
  json.url system_url(system, format: :json)
end
