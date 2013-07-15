class StaticPagesController < ApplicationController
	def about_us
		@current_page = "NOSOTROS"
	end	

	def articulo1
		render :layout => "articles"
	end
end
