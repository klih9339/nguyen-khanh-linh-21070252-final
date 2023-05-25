json.extract! order, :id, :order_purchase_date, :total, :product_id, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
