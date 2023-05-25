json.extract! transaction_report, :id, :customer_id, :order_id, :product_id, :payment_id, :created_at, :updated_at
json.url transaction_report_url(transaction_report, format: :json)
