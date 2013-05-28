class Admin::Resource < ActiveRecord::Base
	attr_accessible :filename, :content_type, :file

	has_many :tags
	mount_uploader :file, FileUploader

	before_save :fillout

	private
		def fillout
			self.filename = self.file.filename
			self.content_type = self.file.content_type
		end
end