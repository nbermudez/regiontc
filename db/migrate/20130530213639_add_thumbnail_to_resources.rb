class AddThumbnailToResources < ActiveRecord::Migration
  def change
    add_column :resources, :thumbnail, :string
  end
end
