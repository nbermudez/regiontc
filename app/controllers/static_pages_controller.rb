class StaticPagesController < ApplicationController
	def about_us
		@current_page = "NOSOTROS"
	end	

	def error_page
	end
end
