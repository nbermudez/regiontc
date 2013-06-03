class Admin::PermissionsController < AdminController
	def add_permissions
		if puede "Modificar Rol"
			if params[:atras]
				redirect_to admin_roles_path
			else
				@roles = Role.where(:name => params[:name])
				@roles.each do |role|
					role.permissions_list = params[:role][:permissions_list]
					role.save
				end
				redirect_to admin_roles_path
			end
		else
			redirect_to access_denied_path
		end
	end
end