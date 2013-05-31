class ResourcesController < ApplicationController
	def index
		@current_page = "RECURSOS"
		@tags = Tag.find(:all, :group => "title", :select => "title").uniq
	end

	def bytag
		@current_page = "RECURSOS"
		@tag = params[:tag]
		@resources = Resource.joins(:tags).where(:tags => {:title => params[:tag]})
	end
end
