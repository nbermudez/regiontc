class CreateStakeusers < ActiveRecord::Migration
  def change
    create_table :stakeusers do |t|
      t.references :stake
      t.references :user

      t.timestamps
    end
    add_index :stakeusers, :stake_id
    add_index :stakeusers, :user_id
  end
end
