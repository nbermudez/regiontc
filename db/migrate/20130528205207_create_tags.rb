class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :title
      t.references :resource

      t.timestamps
    end
    add_index :tags, :resource_id
  end

  def self.up
    Tag.reset_column_information
  end
end
