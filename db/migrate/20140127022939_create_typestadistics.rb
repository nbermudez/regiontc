class CreateTypestadistics < ActiveRecord::Migration
  def change
    create_table :typestadistics do |t|
      t.string :name

      t.timestamps
    end
  end
end
