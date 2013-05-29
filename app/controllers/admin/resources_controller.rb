class Admin::ResourcesController < AdminController
	def index
		@resources = Admin::Resource.all(:select=>"id, filename")
	end

	def new
		@resource = Admin::Resource.new
	end

	def create
		if params[:cancel]
			redirect_to admin_resources_url
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
		tmp = Tag.all
		@tags_available = Array.new
		tmp.each do |t|
			@tags_available.push(t.title)
		end
	end

	def destroy
		@resource = Admin::Resource.find(params[:id])
		@resource.destroy

		redirect_to admin_resources_url
	end
end
