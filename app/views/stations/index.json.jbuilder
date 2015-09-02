json.array!(@stations) do |station|
  json.extract! station, :id, :name, :line_id, :description, :active, :slug
  json.url station_url(station, format: :json)
end
