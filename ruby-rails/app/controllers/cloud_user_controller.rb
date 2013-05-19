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

  def history
    @cloud_user = CloudUser.find(params[:id])
    username = @cloud_user.username
    if App.connection.table_exists? username
    @hash = App.connection.select_all("SELECT * FROM \"#{username}\" WHERE updated_at = (SELECT max(updated_at) FROM \"#{username}\" );")
    else 
      redirect_to :back, :notice => "No History for this User."
    end
  end

  def upgrade
    @cloud_user = CloudUser.find(params[:id])
      username = @cloud_user.username
      query = "INSERT INTO \"#{username}\" (updated_at, status, admin, admin_ip) VALUES (CURRENT_TIMESTAMP, True, '#{current_cloud_user.username}', '#{current_cloud_user.current_sign_in_ip}');"
    if App.connection.table_exists? username
      App.connection.execute(query)
    else
      App.connection.create_table(username) do |t|
        t.column :updated_at, :datetime
        t.column :status, :boolean
        t.column :admin, :string
        t.column :admin_ip, :string
      end
      App.connection.execute(query)
    end
    
    if @cloud_user.update_attribute :admin, true
      redirect_to :back, :notice => "Cloud User added to Admins." 
    end
  end
 
 def downgrade
    @cloud_user = CloudUser.find(params[:id])
      username = @cloud_user.username
      query = "INSERT INTO \"#{username}\" (updated_at, status, admin, admin_ip) VALUES (CURRENT_TIMESTAMP, False, '#{current_cloud_user.username}', '#{current_cloud_user.current_sign_in_ip}');"
    if App.connection.table_exists? username
      App.connection.execute(query)
    else
       App.connection.create_table(username) do |t|
         t.column :updated_at, :datetime
         t.column :status, :boolean
         t.column :admin, :string
         t.column :admin_ip, :string
       end
       App.connection.execute(query)
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
