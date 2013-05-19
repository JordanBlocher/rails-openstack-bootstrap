class UserProjectAssociationsController < ApplicationController
  # GET /user_project_associations
  # GET /user_project_associations.json
  def index
    @user_project_associations = UserProjectAssociation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_project_associations }
    end
  end

  # GET /user_project_associations/1
  # GET /user_project_associations/1.json
  def show
    @user_project_association = UserProjectAssociation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_project_association }
    end
  end

  # GET /user_project_associations/new
  # GET /user_project_associations/new.json
  def new
    @user_project_association = UserProjectAssociation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_project_association }
    end
  end

  # GET /user_project_associations/1/edit
  def edit
    @user_project_association = UserProjectAssociation.find(params[:id])
  end

  # POST /user_project_associations
  # POST /user_project_associations.json
  def create
    @user_project_association = UserProjectAssociation.new(params[:user_project_association])

    respond_to do |format|
      if @user_project_association.save
        format.html { redirect_to @user_project_association, notice: 'User project association was successfully created.' }
        format.json { render json: @user_project_association, status: :created, location: @user_project_association }
      else
        format.html { render action: "new" }
        format.json { render json: @user_project_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_project_associations/1
  # PUT /user_project_associations/1.json
  def update
    @user_project_association = UserProjectAssociation.find(params[:id])

    respond_to do |format|
      if @user_project_association.update_attributes(params[:user_project_association])
        format.html { redirect_to @user_project_association, notice: 'User project association was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_project_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_project_associations/1
  # DELETE /user_project_associations/1.json
  def destroy
    @user_project_association = UserProjectAssociation.find(params[:id])
    @user_project_association.destroy

    respond_to do |format|
      format.html { redirect_to user_project_associations_url }
      format.json { head :no_content }
    end
  end
end
