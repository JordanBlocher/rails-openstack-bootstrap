class CloudUserController < ApplicationController
  before_filter :authenticate_cloud_user!

  def index
    @cloud_user = CloudUser.all
 
      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instances }
    end
  end

  def show
    @cloud_user = CloudUser.find(params[:id])
  
      respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instance }
    end
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
