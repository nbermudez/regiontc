class Stakeuser < ActiveRecord::Base
  belongs_to :stake
  belongs_to :user
  # attr_accessible :title, :body
end
