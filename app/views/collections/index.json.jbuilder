json.array!(@collections) do |collection|
  json.extract! collection, :id, :name, :desc, :start_date, :finish_date
  json.url collection_url(collection, format: :json)
end
