class CreateStakes < ActiveRecord::Migration
  def change
    create_table :stakes do |t|
      t.string :name

      t.timestamps
    end
  end
end
