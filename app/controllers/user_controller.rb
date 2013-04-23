class UserController < ApplicationController
  
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def upgrade
    @user = User.find(params[:id])
    @user.update_attribute :admin, true
    flash[:notice] = "User added to admin."
  end
  
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "Successfully deleted User."
      redirect_to root_path
    end
  end
end
