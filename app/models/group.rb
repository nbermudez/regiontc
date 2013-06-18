class Group < ActiveRecord::Base
  attr_accessor :name_selected

  has_and_belongs_to_many :users, :join_table => "users_groups"
  attr_accessible :name, :name_selected

  before_save :right_name

  private
  	def right_name
  		if self.name_selected.present? and self.name_selected != "Nuevo rol"
  			self.name = self.name_selected
  		end
  	end
end
