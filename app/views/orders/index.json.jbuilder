json.array!(@orders) do |order|
  json.extract! order, :id, :name, :amount, :pickup_time, :price, :is_approved, :is_picked_up
  json.url order_url(order, format: :json)
end
