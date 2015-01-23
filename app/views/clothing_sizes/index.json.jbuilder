json.array!(@clothing_sizes) do |clothing_size|
  json.extract! clothing_size, :shirt_size
  json.url clothing_size_url(clothing_size, format: :json)
end
