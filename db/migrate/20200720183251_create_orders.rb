class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :city
      t.string :first_name
      t.string :last_name
      t.integer :unit_sold
      t.decimal :unit_price
      t.decimal :total_revenue
      t.float :latitude
      t.float :longitude
      t.integer :product_id

      t.timestamps
    end
    add_index :orders, :product_id
  end
end
