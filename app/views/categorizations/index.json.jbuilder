json.array!(@categorizations) do |categorization|
  json.extract! categorization, :quantity
  json.url categorization_url(categorization, format: :json)
end
