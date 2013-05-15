class CloudUserController < ApplicationController
  before_filter :authenticate_cloud_user!

  def index
    @cloud_user = CloudUser.all
 
      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cloud_user }
    end
  end

  def show
    @cloud_user = CloudUser.find(params[:id])
  
      respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cloud_user }
    end
  end

  def upgrade
    @cloud_user = CloudUser.find(params[:id])
      username = @cloud_user.username
      insert = "INSERT INTO `username` VALUES ( NOW, True);"
    if App.table_exists? @cloud_user.username
      App.execute(insert)
    else
      create = "CREATE TABLE `username` ( date_admin datetime, admin_status boolean);"
      App.connection.execute(create)
      App.connection.execute(insert)
    end
    if @cloud_user.update_attribute :admin, true
      redirect_to :back, :notice => "Cloud User added to Admins." 
    end
  end
 
 def downgrade
    @cloud_user = CloudUser.find(params[:id])
      username = @cloud_user.username
      insert = "INSERT INTO `username` VALUES ( NOW, False)"
    if App.table_exists? @cloud_user.username
      App.execute(insert)
    else
      create = "CREATE TABLE `username` ( date_admin datetime, admin_status boolean);"
      App.execute(create)
      App.execute(insert)
    end
 
    if @cloud_user.update_attribute :admin, false
      redirect_to :back, :notice => "CloudUser removed from Admins."
    end
  end
  
  def destroy
    @cloud_user = CloudUser.find(params[:id])
    if @cloud_user.destroy
      redirect_to :back, :notice => "Successfully deleted CloudUser."
    end
  end
end
