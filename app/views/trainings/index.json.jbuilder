json.array!(@trainings) do |training|
  json.extract! training, :id, :name, :description
  json.url training_url(training, format: :json)
end
