class CreateAdminUsersRoles < ActiveRecord::Migration
  def change
    create_table :admin_users_roles, :id => false do |t|
      t.references :admin_user, :role
    end

    add_index :admin_users_roles, [:admin_user_id, :role_id],
      name: "admin_users_roles_index",
      unique: true
  end
end
