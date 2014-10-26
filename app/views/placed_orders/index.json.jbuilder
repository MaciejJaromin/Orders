json.array!(@placed_orders) do |placed_order|
  json.extract! placed_order, :id, :time_placed, :customer_id
  json.url placed_order_url(placed_order, format: :json)
end
