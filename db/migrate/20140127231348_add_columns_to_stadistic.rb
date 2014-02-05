class AddColumnsToStadistic < ActiveRecord::Migration
  def change
  	add_column :stadistics, :user_id, :integer
    add_index :stadistics, :user_id

    add_column :stadistics, :chapel_id, :integer
    add_index :stadistics, :chapel_id
  end
end
