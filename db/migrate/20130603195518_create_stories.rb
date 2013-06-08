class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :report
      t.integer :year
      t.string :stake
      t.text :abstract

      t.timestamps
    end
  end
end
