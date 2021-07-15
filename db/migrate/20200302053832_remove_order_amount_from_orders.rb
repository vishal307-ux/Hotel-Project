class RemoveOrderAmountFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :order_amount, :float
  end
end
