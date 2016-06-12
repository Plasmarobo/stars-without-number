json.array!(@planets) do |planet|
  json.extract! planet, :id, :x, :y, :name, :atmosphere, :temperature, :biosphere, :tech_level, :population, :type_index, :description, :gm_notes, :image_src, :orbit_id
  json.url planet_url(planet, format: :json)
end
