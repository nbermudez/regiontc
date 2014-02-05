class AddColumnToGoals < ActiveRecord::Migration
  def change
  	add_column :goals, :year, :integer
  end
end
