class Admin::RolesController < AdminController
	def index	
		if puede "Ver Rol"
			@roles = Role.select("distinct name, description")
		else
			redirect_to access_denied_path
		end
	end

	def create
		@user = User.find(params[:user_id])
		@role = @user.roles.create(params[:role])
		t = Role.find_by_name(params[:role][:name_select])

		if t
			@role.description = t.description
			@role.permissions = t.permissions
		end

		if @role.save
			redirect_to admin_user_path(@user.id)
		else
			raise @role.errors.first.to_s
		end
	end

	def new
		if puede "Asignar Rol"
			@user = User.find(params[:user_id])
			tmp = Role.select(:name).uniq
			@roles_available = Array.new

			tmp.each do |t|
				@roles_available.push(t.name)
			end
			tmp2 = @user.roles
			current_roles = []
			tmp2.each do |t|
				current_roles.push(t.name)
			end

			@roles_available.push("Nuevo rol")
			@roles_available = @roles_available - current_roles
		else
			redirect_to access_denied_path
		end
	end

	def new_empty
		if puede "Crear Rol"
			@role = Role.new
		else
			redirect_to access_denied_path
		end
	end

	def create_empty
		if params[:cancel]
			redirect_to admin_roles_path
		else
			@role = Role.create(params[:role])
			if @role.save
				redirect_to admin_role_show_path(@role.name)
			else
				render :action => 'new_empty'
			end
		end
	end

	def show
		if puede "Ver Rol"
			perms = Permission.all
			@perms1 = perms.in_groups(2)
			@role = Role.find_by_name(params[:name])
			tmp = @role.permissions.all
			@current_perms = Array.new
			tmp.each do |t|
				@current_perms.push(t.id)
			end
		end
	end

	def destroy
		if puede "Eliminar Rol"
			if params[:user_id].present?
				@user = User.find(params[:user_id])
				@role = @user.roles.find(params[:id])

				if @user.email != "nestor.bermudez@unitec.edu" || testing
					@role.destroy
				end
				redirect_to new_admin_user_role_path(@user.id)
			else
				@roles = Role.where(:name => params[:name])
				@roles.each do |r|
					r.destroy
				end

				redirect_to admin_roles_path
			end
		else
			redirect_to access_denied_path
		end
	end
end