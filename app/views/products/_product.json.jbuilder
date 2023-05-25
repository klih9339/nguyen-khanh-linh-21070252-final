json.extract! product, :id, :product_name, :brand, :price, :descripstion, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
