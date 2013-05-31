class Resource < ActiveRecord::Base
	attr_accessible :filename, :content_type, :file, :tags_attributes, :thumbnail, :description

	has_many :tags
	mount_uploader :file, FileUploader
	mount_uploader :thumbnail, ImageUploader

	before_save :fillout

	private
		def fillout
			self.filename = self.file.filename
			#self.content_type = self.file.content_type
		end
end