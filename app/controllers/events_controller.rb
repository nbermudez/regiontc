class EventsController < ApplicationController
  def index
  	@current_page = "EVENTOS"
  	@events = Event.where("celebrated_at > (?)", Date.yesterday)
  	@groups = current_user.groups
  	@public_events = Event.where(:is_public => true).where("celebrated_at > (?)", Date.yesterday)
  end
end
