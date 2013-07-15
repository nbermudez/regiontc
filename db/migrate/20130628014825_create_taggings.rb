class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings, :id => false do |t|
      t.integer :resource_id
      t.integer :tag_id

      t.timestamps
    end
  end

  def self.down
  	drop_table :taggings
  end
end
