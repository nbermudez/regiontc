class Goal < ActiveRecord::Base
  belongs_to :typestadistic
  belongs_to :user
  belongs_to :chapel
  attr_accessible :total, :user_id, :chapel_id, :typestadistic_id, :sentToStake, :ableEditing, :year
end
