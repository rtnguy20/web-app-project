class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  def admin_user?
  current_user && current_user.admin?    
  # assuming admin is the name of your boolean field.  
  end
  def recruiter_user?
  current_user && current_user.recruiter?    
  # assuming admin is the name of your boolean field.  
  end
   def index
    @jobrecs = Jobrec.all
    @students = Student.all
  end
end
