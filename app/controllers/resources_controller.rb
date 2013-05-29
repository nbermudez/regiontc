class ResourcesController < ApplicationController
	def index
		@current_page = "RECURSOS"
		@resources = Admin::Resource.all
		@tags = Tag.group(:title)
	end

	def create
		if params[:cancel]
			redirect_to admin_url
		else
			
		end
	end
end
