class SessionsController < ApplicationController
  def create
  	user = Admin::User.authenticate(params[:session][:email], params[:session][:password])
    if user.nil?
    else
      sign_in user
    end
  	render :action => 'admin'
  end

  def admin
		@current_page = "ADMIN"
	end

  def destroy
    sign_out
    redirect_to root_path
  end
end
