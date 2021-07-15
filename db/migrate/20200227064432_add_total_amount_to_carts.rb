class AddTotalAmountToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :total_amount, :float
  end
end
