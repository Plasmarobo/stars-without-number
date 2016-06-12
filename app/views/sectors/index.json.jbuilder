json.array!(@sectors) do |sector|
  json.extract! sector, :id, :name, :width, :height, :image_src, :seed
  json.url sector_url(sector, format: :json)
end
