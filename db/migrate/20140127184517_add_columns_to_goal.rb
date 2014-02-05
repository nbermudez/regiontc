class AddColumnsToGoal < ActiveRecord::Migration
  def change
  	add_column :goals, :user_id, :integer
    add_index :goals, :user_id

    add_column :goals, :chapel_id, :integer
    add_index :goals, :chapel_id
  end
end
