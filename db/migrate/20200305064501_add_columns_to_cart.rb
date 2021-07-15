class AddColumnsToCart < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :gst_amount, :float
    add_column :carts, :grand_total, :float
  end
end
