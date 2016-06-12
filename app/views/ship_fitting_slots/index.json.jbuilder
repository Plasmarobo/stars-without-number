json.array!(@ship_fitting_slots) do |ship_fitting_slot|
  json.extract! ship_fitting_slot, :id, :ship_fitting_id, :ship_id
  json.url ship_fitting_slot_url(ship_fitting_slot, format: :json)
end
