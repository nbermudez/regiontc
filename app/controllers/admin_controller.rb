class AdminController < ApplicationController
	before_filter :auth

	def auth
		if !signed_in?
			redirect_to root_url
		end
	end
end
