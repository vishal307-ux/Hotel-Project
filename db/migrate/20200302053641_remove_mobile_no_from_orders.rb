class RemoveMobileNoFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :mobile_no, :integer
  end
end
