class Admin::UsersController < AdminController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		if params[:cancel]
			redirect_to admin_users_url
		else
			@user = User.new(params[:user])

			if @user.save
				redirect_to admin_users_url, :notice => 'Usuario creado exitosamente.'
			else
				render :action => "new"
			end
		end
		
	end
end
