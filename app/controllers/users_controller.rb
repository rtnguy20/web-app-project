class UsersController < ApplicationController
  def index
  end
  def show
  @user = User.find_by_email(params[:id])
  end
  
  def dashboard
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to landings_path
  end
end

