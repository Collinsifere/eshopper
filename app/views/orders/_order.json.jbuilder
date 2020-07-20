json.extract! order, :id, :city, :first_name, :last_name, :unit_sold, :unit_price, :total_revenue, :latitude, :longitude, :product_id, :created_at, :updated_at
json.url order_url(order, format: :json)
