#require 'admin/resource'
class Tag < ActiveRecord::Base
	attr_accessible :title, :resource_attributes

	validates :title, :presence => true, :uniqueness => true

	def resources
		tmp = Array.new
		res = Tagging.where(:tag_id => self.id)
		res.each do |t|
			tmp.push(t.resource_id)
		end
		return Resource.where('id in (?)', tmp)
	end
end