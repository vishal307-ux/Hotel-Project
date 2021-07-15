class AddProductToCart < ActiveRecord::Migration[6.0]
  def change
    add_reference :carts, :product, index: true
  end
end
