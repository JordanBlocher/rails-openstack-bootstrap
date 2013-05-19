class UserProjectRoleAssociationsController < ApplicationController
  # GET /user_project_role_associations
  # GET /user_project_role_associations.json
  def index
    @user_project_role_associations = UserProjectRoleAssociation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_project_role_associations }
    end
  end

  # GET /user_project_role_associations/1
  # GET /user_project_role_associations/1.json
  def show
    @user_project_role_association = UserProjectRoleAssociation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_project_role_association }
    end
  end

  # GET /user_project_role_associations/new
  # GET /user_project_role_associations/new.json
  def new
    @user_project_role_association = UserProjectRoleAssociation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_project_role_association }
    end
  end

  # GET /user_project_role_associations/1/edit
  def edit
    @user_project_role_association = UserProjectRoleAssociation.find(params[:id])
  end

  # POST /user_project_role_associations
  # POST /user_project_role_associations.json
  def create
    @user_project_role_association = UserProjectRoleAssociation.new(params[:user_project_role_association])

    respond_to do |format|
      if @user_project_role_association.save
        format.html { redirect_to @user_project_role_association, notice: 'User project role association was successfully created.' }
        format.json { render json: @user_project_role_association, status: :created, location: @user_project_role_association }
      else
        format.html { render action: "new" }
        format.json { render json: @user_project_role_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_project_role_associations/1
  # PUT /user_project_role_associations/1.json
  def update
    @user_project_role_association = UserProjectRoleAssociation.find(params[:id])

    respond_to do |format|
      if @user_project_role_association.update_attributes(params[:user_project_role_association])
        format.html { redirect_to @user_project_role_association, notice: 'User project role association was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_project_role_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_project_role_associations/1
  # DELETE /user_project_role_associations/1.json
  def destroy
    @user_project_role_association = UserProjectRoleAssociation.find(params[:id])
    @user_project_role_association.destroy

    respond_to do |format|
      format.html { redirect_to user_project_role_associations_url }
      format.json { head :no_content }
    end
  end
end
