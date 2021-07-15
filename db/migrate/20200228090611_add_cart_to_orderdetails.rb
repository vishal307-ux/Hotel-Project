class AddCartToOrderdetails < ActiveRecord::Migration[6.0]
  def change
    add_reference :orderdetails, :cart, index: true
  end
end
