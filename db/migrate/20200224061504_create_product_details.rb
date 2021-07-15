class CreateProductDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :product_details do |t|
      t.string :product_name
      t.float :product_price
      t.integer :quantity
      t.float :total_amount

      t.timestamps
    end
  end
end
