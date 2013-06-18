class HomeController < ActionController::Base
	def index
		@events = Event.where(:is_public => true).where("celebrated_at > (?)", Date.yesterday)
	end
end

#Cindy Aguirre: 96047455