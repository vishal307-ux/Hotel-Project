class AddSubTotalToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :sub_total, :float
  end
end
