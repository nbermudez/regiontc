class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations, :id => false do |t|
      t.integer :event_id
      t.integer :group_id

      t.timestamps
    end
  end
end
