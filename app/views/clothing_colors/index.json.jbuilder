json.array!(@clothing_colors) do |clothing_color|
  json.extract! clothing_color, :shirt_color
  json.url clothing_color_url(clothing_color, format: :json)
end
