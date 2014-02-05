class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :total
      t.references :typestadistic

      t.timestamps
    end
    add_index :goals, :typestadistic_id
  end
end
