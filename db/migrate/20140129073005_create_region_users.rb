class CreateRegionUsers < ActiveRecord::Migration
  def change
    create_table :region_users do |t|
      t.references :user
      t.references :region

      t.timestamps
    end
    add_index :region_users, :user_id
    add_index :region_users, :region_id
  end
end
