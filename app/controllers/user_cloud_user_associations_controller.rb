class UserCloudUserAssociationsController < ApplicationController
  # GET /user_cloud_user_associations
  # GET /user_cloud_user_associations.json
  def index
    @user_cloud_user_associations = UserCloudUserAssociation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_cloud_user_associations }
    end
  end

  # GET /user_cloud_user_associations/1
  # GET /user_cloud_user_associations/1.json
  def show
    @user_cloud_user_association = UserCloudUserAssociation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_cloud_user_association }
    end
  end

  # GET /user_cloud_user_associations/new
  # GET /user_cloud_user_associations/new.json
  def new
    @user_cloud_user_association = UserCloudUserAssociation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_cloud_user_association }
    end
  end

  # GET /user_cloud_user_associations/1/edit
  def edit
    @user_cloud_user_association = UserCloudUserAssociation.find(params[:id])
  end

  # POST /user_cloud_user_associations
  # POST /user_cloud_user_associations.json
  def create
    @user_cloud_user_association = UserCloudUserAssociation.new(params[:user_cloud_user_association])

    respond_to do |format|
      if @user_cloud_user_association.save
        format.html { redirect_to @user_cloud_user_association, notice: 'User cloud user association was successfully created.' }
        format.json { render json: @user_cloud_user_association, status: :created, location: @user_cloud_user_association }
      else
        format.html { render action: "new" }
        format.json { render json: @user_cloud_user_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_cloud_user_associations/1
  # PUT /user_cloud_user_associations/1.json
  def update
    @user_cloud_user_association = UserCloudUserAssociation.find(params[:id])

    respond_to do |format|
      if @user_cloud_user_association.update_attributes(params[:user_cloud_user_association])
        format.html { redirect_to @user_cloud_user_association, notice: 'User cloud user association was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_cloud_user_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_cloud_user_associations/1
  # DELETE /user_cloud_user_associations/1.json
  def destroy
    @user_cloud_user_association = UserCloudUserAssociation.find(params[:id])
    @user_cloud_user_association.destroy

    respond_to do |format|
      format.html { redirect_to user_cloud_user_associations_url }
      format.json { head :no_content }
    end
  end
end
