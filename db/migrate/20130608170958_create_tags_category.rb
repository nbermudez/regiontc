class CreateTagsCategory < ActiveRecord::Migration
  def up
  	create_table :tags_category, :id => false do |t|
      t.integer :tag_id
      t.integer :category_id
    end
  end

  def down
  end
end
