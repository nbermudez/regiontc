class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.datetime :celebrated_at
      t.boolean :is_public
      t.text :description

      t.timestamps
    end
  end
end
