class Admin::UsersController < AdminController
	def index
		@users = Admin::User.all
	end

	def new
		@user = Admin::User.new
	end

	def create
		if params[:cancel]
			redirect_to admin_users_url
		else
			@user = Admin::User.new(params[:admin_user])

			if @user.save
				redirect_to admin_users_url, :notice => 'Usuario creado exitosamente.'
			else
				render :action => "new"
			end
		end
		
	end
end
