class RemoveGstTotalFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :gst_total, :float
  end
end
