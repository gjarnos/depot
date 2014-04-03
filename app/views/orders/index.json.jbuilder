json.array!(@orders) do |order|
  json.extract! order, :name, :address, :email, :total_price
  json.url order_url(order, format: :json)
end
