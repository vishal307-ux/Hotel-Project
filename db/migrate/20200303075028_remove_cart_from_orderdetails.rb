class RemoveCartFromOrderdetails < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orderdetails, :cart, index: true
  end
end
