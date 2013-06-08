class AddStakeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :stake, :string
  end
end
