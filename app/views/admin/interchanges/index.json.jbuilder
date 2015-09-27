json.array!(@interchanges) do |interchange|
  json.extract! interchange, :id, :name
  json.url interchange_url(interchange, format: :json)
end
