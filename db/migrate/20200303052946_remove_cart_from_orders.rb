class RemoveCartFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :cart, index: true
  end
end
