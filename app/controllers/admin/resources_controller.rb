class Admin::ResourcesController < AdminController
	def index
	end

	def new
		@resource = Admin::Resource.new
	end

	def create
		if params[:cancel]
			redirect_to admin_url
		else
			@resource = Admin::Resource.new(params[:admin_resource])
			if @resource.save
				redirect_to @resource
			else
				render :action => "new"
			end			
		end
	end

	def show
		@resource = Admin::Resource.find(params[:id])
	end
end
