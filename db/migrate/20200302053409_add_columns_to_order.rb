class AddColumnsToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :first_name, :string
    add_column :orders, :last_name, :string
    add_column :orders, :email, :string
    add_column :orders, :mobile, :integer
    add_column :orders, :city, :string
    add_column :orders, :region, :string
    add_column :orders, :total_amount, :float
  end
end
