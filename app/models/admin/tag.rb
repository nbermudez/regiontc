class Admin::Tag < ActiveRecord::Base
	attr_accessible :title

	belongs_to :resource
end