class Admin::StoriesController < AdminController
	def index
		if puede "Ver Historia"
			@stories = Story.all
		else
			redirect_to access_denied_path
		end		
	end

	def create
		if params[:cancel]
			redirect_to admin_stories_url
		else
			@story = Story.new(params[:story])

			if @story.save
				redirect_to admin_stories_url, :notice => 'Usuario creado exitosamente.'
			else
				render :action => "new"
			end
		end
	end

	def new
		if puede "Crear Historia"
			@story = Story.new
		else
			redirect_to access_denied_path
		end	
	end

	def destroy
		if puede "Eliminar Historia"
			story = Story.find(params[:id])
			story.destroy
			redirect_to admin_stories_url
		else
			redirect_to access_denied_path
		end	
	end
end