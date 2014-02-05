class AddIndexToStake < ActiveRecord::Migration
  def change
  	add_column :stakes, :region_id, :integer
    add_index :stakes, :region_id
  end
end
