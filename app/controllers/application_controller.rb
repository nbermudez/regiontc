class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  include ApplicationHelper

  def testing
  	Rails.configuration.testing
  end
end
