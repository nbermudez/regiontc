class AddColumnsToGoals < ActiveRecord::Migration
  def change
  	add_column :goals, :sentToStake, :boolean
  	add_column :goals, :ableEditing, :boolean
  end
end
