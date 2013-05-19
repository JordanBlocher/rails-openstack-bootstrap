class VirtualInterfaceCloudUserAssociationsController < ApplicationController
  # GET /virtual_interface_cloud_user_associations
  # GET /virtual_interface_cloud_user_associations.json
  def index
      @virtual_interface_cloud_user_associations = VirtualInterfaceCloudUserAssociation.all
    respond_to do |format|
      format.html 
      format.json { render json: @virtual_interface_cloud_user_association }
    end
  end

  # GET /virtual_interface_cloud_user_associations/1
  # GET /virtual_interface_cloud_user_associations/1.json
  def show
    @virtual_interface_cloud_user_association = VirtualInterfaceCloudUserAssociation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @virtual_interface_cloud_user_association }
    end
  end

  # GET /virtual_interface_cloud_user_associations/new
  # GET /virtual_interface_cloud_user_associations/new.json
  def new
    if App.connection.table_exists? 'virtual_interface_cloud_user_associations'
      App.connection.execute('DROP TABLE virtual_interface_cloud_user_associations')
    end
    App.connection.create_table('virtual_interface_cloud_user_associations') do |t|
        t.column :created_at, :datetime
        t.column :deleted_at, :datetime
        t.column :updated_at, :datetime
        t.column :shared_ip, :string
        t.column :cloud_username, :string
        t.column :virtual_interface_id, :integer
    end
    floating_shared = FloatingIp.shared
    CloudUser.all.each do |cshared|
      @shared = VirtualInterfaceCloudUserAssociation.new
      FloatingIp.shared.each do |fshared|
        if cshared.current_sign_in_ip == fshared.address
          shared_interface_id = FixedIp.fixed_active.select('virtual_interface_id').where('id=?',fshared.fixed_ip_id)
          @shared.update_attributes(:cloud_username => cshared.username, :shared_ip => cshared.current_sign_in_ip, :virtual_interface_id => shared_interface_id)
        end
      end
      @shared.save
    end
    redirect_to '/virtual_interface_cloud_user_associations'
  end

end

