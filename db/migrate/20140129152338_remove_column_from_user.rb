class RemoveColumnFromUser < ActiveRecord::Migration
  def up
  	remove_column :users, :stake
  end

  def down
  end
end
