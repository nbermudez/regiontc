class Admin::ResourcesController < AdminController
	def index
		if puede "Ver Recurso"
			@resources = Resource.all(:select=>"id, filename")
		else
			redirect_to access_denied_path
		end
	end

	def new
		if puede "Crear Recurso"
			@resource = Resource.new
		else
			redirect_to access_denied_path
		end
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
		if puede "Ver Recurso"
			@resource = Resource.find(params[:id])
			tmp = Tag.select(:title).uniq
			@tags_available = Array.new
			tmp.each do |t|
				@tags_available.push(t.title)
			end
		else
			redirect_to access_denied_path
		end
	end

	def destroy
		if puede "Eliminar Recurso"
			@resource = Resource.find(params[:id])
			@resource.destroy

			redirect_to admin_resources_url
		else
			redirect_to access_denied_path
		end
	end
end
