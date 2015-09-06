json.array!(@images) do |image|
  json.extract! image, :id, :filename, :title, :alt, :imageable_id
  json.url image_url(image, format: :json)
end
