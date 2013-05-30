class ResourcesController < ApplicationController
	def index
		@current_page = "RECURSOS"
		@tags = Tag.find(:all, :group => "id, title")
	end

	def bytag
		@resources = Resource.joins(:tags).where(:tags => {:title => params[:tag]})
	end
end
