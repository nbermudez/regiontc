class Resource < ActiveRecord::Base
	attr_accessible :filename, :content_type, :file, :tags_attributes, :thumbnail, :description, :url

	mount_uploader :file, FileUploader
	mount_uploader :thumbnail, ImageUploader

	#before_save :fillout
	validates :filename, :presence => true
	validates :description, :presence => true

	def tags
		tmp = Array.new
		tags = Tagging.where(:resource_id => self.id)
		tags.each do |t|
			tmp.push(t.tag_id)
		end
		return Tag.where('id in (?)', tmp)
	end

	private
		def fillout
			self.filename = self.file.filename
			#self.content_type = self.file.content_type
		end
end