class CreateUsersRoles < ActiveRecord::Migration
  def up
  	create_table :users_roles, :id => false do |t|
      t.integer :user_id
      t.integer :role_id
    end
  end

  def down
  end
end
