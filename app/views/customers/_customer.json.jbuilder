json.extract! customer, :id, :customer_name, :customer_phone, :customer_points, :created_at, :updated_at
json.url customer_url(customer, format: :json)
