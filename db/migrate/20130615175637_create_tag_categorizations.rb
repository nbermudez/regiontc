class CreateTagCategorizations < ActiveRecord::Migration
  def change
    create_table :tag_categorizations, :id => false do |t|
      t.integer :tag_id
      t.integer :category_id

      t.timestamps
    end
  end
end
