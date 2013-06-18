class AddInvitedGroupToEvents < ActiveRecord::Migration
  def change
    add_column :events, :invited_group, :string
  end
end
