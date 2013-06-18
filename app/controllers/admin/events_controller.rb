class Admin::EventsController < AdminController
	def index
		if puede "Ver Evento"
			@events = Event.all
		else
			redirect_to access_denied_path
		end		
	end

	def create
		@event = Event.new(params[:event])

		if @event.save
			redirect_to admin_events_path
		else
			render :action => "new"
		end
	end

	def new
		if puede "Crear Evento"
			@event = Event.new
		else
			redirect_to access_denied_path
		end	
	end

	def edit
		if puede "Modificar Evento"
			@event = Event.find(params[:id])
		else
			redirect_to access_denied_path
		end
	end

	def update		
		@event = Event.find(params[:id])

		if @event.update_attributes(params[:event])
			redirect_to admin_events_path
		else
			render :action => "edit"
		end		
	end

	def show
		if puede "Ver Evento"
			@event = Event.find(params[:id])
			is = Invitation.where(:event_id => @event.id)
			iss = []
			is.each do |i|
				iss.push(i.group_id)
			end


			@invs = Group.where("id in (?)", iss)
			# is.each do |i|
			# 	@invs.merge(Group.find(i.group_id))
			# end
			
			@to_inv = Group.all
		else
			redirect_to access_denied_path
		end
	end

	def invite
		@event = Event.find(params[:id])
		inv = Invitation.new
		inv.group_id = params[:invite_group]
		inv.event_id = params[:id]
		inv.save
		redirect_to admin_event_path(@event)
	end

	def uninvite
		@event = Event.find(params[:event_id])
		inv = Invitation.where(:event_id => params[:event_id]).where(:group_id => params[:group_id]);
		inv.delete_all

		redirect_to admin_event_path(@event)
	end

	def destroy
		t = Event.find(params[:id])
		invs = Invitation.where(:event_id => params[:id])
		invs.delete_all
		t.destroy

		redirect_to admin_events_path
	end
end