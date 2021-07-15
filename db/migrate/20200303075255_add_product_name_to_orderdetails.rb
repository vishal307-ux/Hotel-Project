class AddProductNameToOrderdetails < ActiveRecord::Migration[6.0]
  def change
    add_column :orderdetails, :product_name, :string
  end
end
