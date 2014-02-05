class CreateChapelusers < ActiveRecord::Migration
  def change
    create_table :chapelusers do |t|
      t.references :chapel
      t.references :user

      t.timestamps
    end
    add_index :chapelusers, :chapel_id
    add_index :chapelusers, :user_id
  end
end
