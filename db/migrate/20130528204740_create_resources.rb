class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :filename
      t.string :content_type
      t.string :file

      t.timestamps
    end
  end
end
