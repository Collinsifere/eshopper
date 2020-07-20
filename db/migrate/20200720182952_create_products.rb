class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :size
      t.decimal :price

      t.timestamps
    end
  end
end
