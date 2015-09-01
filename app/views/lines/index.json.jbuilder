json.array!(@lines) do |line|
  json.extract! line, :id, :name, :description, :active, :slug
  json.url line_url(line, format: :json)
end
