class Admin::EventsController < AdminController
	def index
		if puede "Ver Evento"
		else
			redirect_to access_denied_path
		end		
	end

	def create
	end

	def new
		if puede "Crear Evento"
		else
			redirect_to access_denied_path
		end	
	end
end