class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  def admin_user?
  current_user && current_user.admin?    
  # assuming admin is the name of your boolean field.  
end
end
