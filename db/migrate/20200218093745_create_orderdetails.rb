class CreateOrderdetails < ActiveRecord::Migration[6.0]
  def change
    create_table :orderdetails do |t|
      t.integer :product_id
      t.integer :order_id
      t.float :product_price
      t.integer :quantity
      t.float :total_amount
      t.float :gst
      t.float :gst_amout

      t.timestamps
    end
  end
end
