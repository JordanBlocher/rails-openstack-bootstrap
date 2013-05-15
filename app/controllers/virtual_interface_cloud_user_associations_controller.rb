class VirtualInterfaceCloudUserAssociationsController < ApplicationController
  # GET /virtual_interface_cloud_user_associations
  # GET /virtual_interface_cloud_user_associations.json
  def index
      @virtual_interface_cloud_user_associations = VirtualInterfaceCloudUserAssociation.virtual_interface_associated_ips

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @virtual_interface_cloud_user_associations }
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
    @virtual_interface_cloud_user_association = VirtualInterfaceCloudUserAssociation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @virtual_interface_cloud_user_association }
    end
  end

  # GET /virtual_interface_cloud_user_associations/1/edit
  def edit
    @virtual_interface_cloud_user_association = VirtualInterfaceCloudUserAssociation.find(params[:id])
  end

  # POST /virtual_interface_cloud_user_associations
  # POST /virtual_interface_cloud_user_associations.json
  def create
    @virtual_interface_cloud_user_association = VirtualInterfaceCloudUserAssociation.new(params[:virtual_interface_cloud_user_association])

    respond_to do |format|
      if @virtual_interface_cloud_user_association.save
        format.html { redirect_to @virtual_interface_cloud_user_association, notice: 'Virtual interface cloud user association was successfully created.' }
        format.json { render json: @virtual_interface_cloud_user_association, status: :created, location: @virtual_interface_cloud_user_association }
      else
        format.html { render action: "new" }
        format.json { render json: @virtual_interface_cloud_user_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /virtual_interface_cloud_user_associations/1
  # PUT /virtual_interface_cloud_user_associations/1.json
  def update
    @virtual_interface_cloud_user_association = VirtualInterfaceCloudUserAssociation.find(params[:id])

    respond_to do |format|
      if @virtual_interface_cloud_user_association.update_attributes(params[:virtual_interface_cloud_user_association])
        format.html { redirect_to @virtual_interface_cloud_user_association, notice: 'Virtual interface cloud user association was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @virtual_interface_cloud_user_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /virtual_interface_cloud_user_associations/1
  # DELETE /virtual_interface_cloud_user_associations/1.json
  def destroy
    @virtual_interface_cloud_user_association = VirtualInterfaceCloudUserAssociation.find(params[:id])
    @virtual_interface_cloud_user_association.destroy

    respond_to do |format|
      format.html { redirect_to virtual_interface_cloud_user_associations_url }
      format.json { head :no_content }
    end
  end
end
