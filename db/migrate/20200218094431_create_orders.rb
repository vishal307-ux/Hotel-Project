class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.integer :mobile_no
      t.float :grand_total
      t.float :gst_total
      t.float :order_amount

      t.timestamps
    end
  end
end
