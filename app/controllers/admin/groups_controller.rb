class Admin::GroupsController < AdminController
	def index	

	end

	def create

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

	def new_empty

	end

	def create_empty

	end

	def show

	end

	def destroy

	end
end