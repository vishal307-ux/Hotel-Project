class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.string :category_name
      t.string :product_name
      t.float :product_price
      t.integer :quantity

      t.timestamps
    end
  end
end
