class AddUserToOrderdetails < ActiveRecord::Migration[6.0]
  def change
    add_reference :orderdetails, :user, index: true
  end
end
