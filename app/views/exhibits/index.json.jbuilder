json.array!(@exhibits) do |exhibit|
  json.extract! exhibit, :id, :name, :descr, :price, :age, :size, :condit, :collection_id
  json.url exhibit_url(exhibit, format: :json)
end
