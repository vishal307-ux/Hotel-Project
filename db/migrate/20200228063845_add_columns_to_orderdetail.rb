class AddColumnsToOrderdetail < ActiveRecord::Migration[6.0]
  def change
    add_column :orderdetails, :first_name, :string
    add_column :orderdetails, :last_name, :string
    add_column :orderdetails, :email, :string
    add_column :orderdetails, :mobile, :integer
    add_column :orderdetails, :city, :string
    add_column :orderdetails, :region, :string
    add_column :orderdetails, :cash, :boolean
    add_column :orderdetails, :online, :boolean
  end
end
