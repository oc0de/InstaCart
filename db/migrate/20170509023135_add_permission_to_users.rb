class AddPermissionToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :permission, :boolean
  end
end
