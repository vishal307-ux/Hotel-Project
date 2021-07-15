class AddUserTypeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_type, :integer, default: 2
  end
end
