class Admin::GroupsController < AdminController

	def create
		@user = User.find(params[:user_id])
		if params[:create]
			group = Group.new(:name => params[:group][:name])
		else
			group = Group.find_by_name(params[:group][:name_selected])
		end		
		if group.nil?
			group = Group.new(params[:group])
		end
		@user.groups << group
		redirect_to new_admin_user_group_path(@user)
	end

	def new
		@user = User.find(params[:user_id])
		@groups_available = []
		tmp = Group.all
		tmp.each do |t|
			@groups_available.push(t.name)
		end
		@groups_available.push("Nuevo grupo")
	end

	def destroy
		if puede "Eliminar Rol"
			if params[:user_id].present?
				@user = User.find(params[:user_id])
				group = @user.groups.find(params[:id])

				if @user.email != "nestor.bermudez@unitec.edu" || testing
					@user.groups.delete(group)
				end
				redirect_to new_admin_user_group_path(@user.id)
			end
		else
			redirect_to access_denied_path
		end
	end
end