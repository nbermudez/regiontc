class Chapeluser < ActiveRecord::Base
  belongs_to :chapel
  belongs_to :user
  # attr_accessible :title, :body
end
