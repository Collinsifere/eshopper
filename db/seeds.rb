# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach(Rails.root.join('lib/product.csv'), headers: true) do |row|

    Product.create({
        title: row[0],
        description: row[1],
        image_url: row[2],
        size: row[3],
        price: row[4]
    })
end

CSV.foreach(Rails.root.join('lib/order.csv'), headers: true) do |row|
  
    Order.create({
        city: row[0],
        first_name: row[1],
        last_name: row[2],
        unit_sold: row[3],
        unit_price: row[4],
        total_revenue: row[5],
        latitude: row[6],
        longitude: row[7],
        product_id: rand(1..1500)
    })
end