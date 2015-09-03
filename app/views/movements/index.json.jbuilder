json.array!(@movements) do |movement|
  json.extract! movement, :id, :up_station_id, :down_station_id, :up_allowed, :down_allowed, :length
  json.url movement_url(movement, format: :json)
end
