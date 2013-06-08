class Group < ActiveRecord::Base
  attr_accessor :name_select
  attr_accessible :name

  has_and_belongs_to_many :users, :join_table => "users_roles"
end
