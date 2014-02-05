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
			if !params[:resource][:file].nil?
				@resource.content_type = params[:resource][:file].content_type
			end
			if @resource.save
				t = Tag.find_by_title("GENERAL")
				if t.nil?
					t = Tag.create(:title => "GENERAL")
				end
				tt = Tagging.new
				tt.resource_id = @resource.id
				tt.tag_id = t.id
				tt.save

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
			@tags_available = Array.new
			@tags = Array.new
			tmp = [-1]

			tags = Tagging.where(:resource_id => @resource.id)
			tags.each do |t|
				tmp.push(t.tag_id)
			end
			#@tags = Tag.where('id in (?)', tmp)

			tags = Tag.where('id not in (?)', tmp)
			tags.each do |t|
				@tags_available.push([t.title, t.id])
			end
		else
			redirect_to access_denied_path
		end
	end

	def edit
		if puede "Modificar Recurso"
			@resource = Resource.find(params[:id])
		else
			redirect_to access_denied_path 
		end
	end

	def update
		@resource = Resource.find(params[:id])
		if @resource.update_attributes(params[:resource])
			redirect_to admin_resource_path
		else
			render :action => "edit"
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

	def new_tag
		@res = Resource.find(params[:id])
		tag = Tag.new
		tag.title = params[:new_tag]
		tag.save

		rt = Tagging.new
		rt.resource_id = @res.id
		rt.tag_id = tag.id
		rt.save

		redirect_to admin_resource_path(@res)
	end

	def add_tag
		@res = Resource.find(params[:id])
		rt = Tagging.new
		rt.tag_id = params[:tag_id]
		rt.resource_id = @res.id
		rt.save

		redirect_to admin_resource_path(@res)
	end
end
