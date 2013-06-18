class AddIsPublicToEvents < ActiveRecord::Migration
  def change
    add_column :events, :is_public, :integer
  end
end
