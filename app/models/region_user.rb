class RegionUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :region
  # attr_accessible :title, :body
end
