class RemoveBackgroundCheckPermissionFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :background_check_permission, :boolean
  end
end
