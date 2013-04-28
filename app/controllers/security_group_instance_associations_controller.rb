class SecurityGroupInstanceAssociationsController < ApplicationController
  # GET /security_group_instance_associations
  # GET /security_group_instance_associations.json
  def index
    @security_group_instance_associations = SecurityGroupInstanceAssociation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @security_group_instance_associations }
    end
  end

  # GET /security_group_instance_associations/1
  # GET /security_group_instance_associations/1.json
  def show
    @security_group_instance_association = SecurityGroupInstanceAssociation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @security_group_instance_association }
    end
  end

  # GET /security_group_instance_associations/new
  # GET /security_group_instance_associations/new.json
  def new
    @security_group_instance_association = SecurityGroupInstanceAssociation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @security_group_instance_association }
    end
  end

  # GET /security_group_instance_associations/1/edit
  def edit
    @security_group_instance_association = SecurityGroupInstanceAssociation.find(params[:id])
  end

  # POST /security_group_instance_associations
  # POST /security_group_instance_associations.json
  def create
    @security_group_instance_association = SecurityGroupInstanceAssociation.new(params[:security_group_instance_association])

    respond_to do |format|
      if @security_group_instance_association.save
        format.html { redirect_to @security_group_instance_association, notice: 'Security group instance association was successfully created.' }
        format.json { render json: @security_group_instance_association, status: :created, location: @security_group_instance_association }
      else
        format.html { render action: "new" }
        format.json { render json: @security_group_instance_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /security_group_instance_associations/1
  # PUT /security_group_instance_associations/1.json
  def update
    @security_group_instance_association = SecurityGroupInstanceAssociation.find(params[:id])

    respond_to do |format|
      if @security_group_instance_association.update_attributes(params[:security_group_instance_association])
        format.html { redirect_to @security_group_instance_association, notice: 'Security group instance association was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @security_group_instance_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_group_instance_associations/1
  # DELETE /security_group_instance_associations/1.json
  def destroy
    @security_group_instance_association = SecurityGroupInstanceAssociation.find(params[:id])
    @security_group_instance_association.destroy

    respond_to do |format|
      format.html { redirect_to security_group_instance_associations_url }
      format.json { head :no_content }
    end
  end
end
