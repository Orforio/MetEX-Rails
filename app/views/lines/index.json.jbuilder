json.array!(@lines) do |line|
  json.extract! line, :id, :name, :colour, :description, :active, :stub
  json.url line_url(line, format: :json)
end
