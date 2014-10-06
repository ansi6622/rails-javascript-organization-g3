json.array!(@hairstyles) do |hairstyle|
  json.extract! hairstyle, :id, :name, :description
  json.url hairstyle_url(hairstyle, format: :json)
end
