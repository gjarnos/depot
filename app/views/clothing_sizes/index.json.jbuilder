json.array!(@clothing_sizes) do |clothing_size|
  json.extract! clothing_size, :sizes
  json.url clothing_size_url(clothing_size, format: :json)
end
