class CreateStadistics < ActiveRecord::Migration
  def change
    create_table :stadistics do |t|
      t.integer :month
      t.integer :year
      t.integer :total
      t.references :typestadistic

      t.timestamps
    end
    add_index :stadistics, :typestadistic_id
  end
end
