class RemoveColumnsFromOrderdetails < ActiveRecord::Migration[6.0]
  def change

    remove_column :orderdetails, :gst, :float

    remove_column :orderdetails, :gst_amount, :float

    remove_column :orderdetails, :cash, :boolean

    remove_column :orderdetails, :online, :boolean
  end
end
