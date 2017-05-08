class AddBackgroundCheckPermissionToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :background_check_permission, :boolean
  end
end
