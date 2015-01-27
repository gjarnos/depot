json.array!(@clothing_images) do |clothing_image|
  json.extract! clothing_image, :image_name
  json.url clothing_image_url(clothing_image, format: :json)
end