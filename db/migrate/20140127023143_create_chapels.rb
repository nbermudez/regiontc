class CreateChapels < ActiveRecord::Migration
  def change
    create_table :chapels do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.references :stake

      t.timestamps
    end
    add_index :chapels, :stake_id
  end
end
