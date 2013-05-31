class Admin::ResourcesController < AdminController
	def index
		@resources = Resource.all(:select=>"id, filename")
	end

	def new
		@resource = Resource.new
	end

	def create
		if params[:cancel]
			redirect_to admin_resources_url
		else
			@resource = Resource.new(params[:resource])
			@resource.content_type = params[:resource][:file].content_type
			if @resource.save
				redirect_to admin_resource_path(@resource.id)
				return
			else
				render :action => "new"
			end			
		end
	end

	def show
		@resource = Resource.find(params[:id])
		tmp = Tag.select(:title).uniq
		@tags_available = Array.new
		tmp.each do |t|
			@tags_available.push(t.title)
		end
	end

	def destroy
		@resource = Resource.find(params[:id])
		@resource.destroy

		redirect_to admin_resources_url
	end
end
