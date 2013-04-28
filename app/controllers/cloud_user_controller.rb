class CloudUserController < ApplicationController
  
  def index
    @cloud_cloud_user = CloudUser.all
  end

  def show
    @cloud_user = CloudUser.find(params[:id])
  end

  def upgrade
    @cloud_user = CloudUser.find(params[:id])
    @cloud_user.update_attribute :admin, true
    flash[:notice] = "CloudUser added to admin."
  end
  
  def destroy
    @cloud_user = CloudUser.find(params[:id])
    if @cloud_user.destroy
      flash[:notice] = "Successfully deleted CloudUser."
      redirect_to root_path
    end
  end
end
