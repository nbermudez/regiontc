#require 'admin/resource'
class Tag < ActiveRecord::Base
	attr_accessible :title, :resource_attributes

	belongs_to :resource

	validates :title, :presence => true
end