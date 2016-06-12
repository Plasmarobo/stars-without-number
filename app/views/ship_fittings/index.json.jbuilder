json.array!(@ship_fittings) do |ship_fitting|
  json.extract! ship_fitting, :id, :name, :description, :cost, :power, :mass, :min_hull_class, :max_hull_class, :tech_level, :notes, :gm_notes
  json.url ship_fitting_url(ship_fitting, format: :json)
end
