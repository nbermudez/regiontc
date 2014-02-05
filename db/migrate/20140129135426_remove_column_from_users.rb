class RemoveColumnFromUsers < ActiveRecord::Migration
  def change
  	add_column :users, :chapel_id, :integer
    add_index :users, :chapel_id
  end
end
