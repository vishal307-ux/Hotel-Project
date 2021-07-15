class RemoveGrandTotalFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :grand_total, :float
  end
end
