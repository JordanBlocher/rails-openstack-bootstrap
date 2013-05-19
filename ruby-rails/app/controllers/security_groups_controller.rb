class SecurityGroupsController < ApplicationController
  before_filter :authenticate_cloud_user!

  # GET /security_groups
  # GET /security_groups.json
  def index
    @security_groups = SecurityGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @security_groups }
    end
  end

  # GET /security_groups/1
  # GET /security_groups/1.json
  def show
    @security_group = SecurityGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @security_group }
    end
  end

  # GET /security_groups/new
  # GET /security_groups/new.json
  def new
    @security_group = SecurityGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @security_group }
    end
  end

  # GET /security_groups/1/edit
  def edit
    @security_group = SecurityGroup.find(params[:id])
  end

  # POST /security_groups
  # POST /security_groups.json
  def create
    @security_group = SecurityGroup.new(params[:security_group])

    respond_to do |format|
      if @security_group.save
        format.html { redirect_to @security_group, notice: 'Security group was successfully created.' }
        format.json { render json: @security_group, status: :created, location: @security_group }
      else
        format.html { render action: "new" }
        format.json { render json: @security_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /security_groups/1
  # PUT /security_groups/1.json
  def update
    @security_group = SecurityGroup.find(params[:id])

    respond_to do |format|
      if @security_group.update_attributes(params[:security_group])
        format.html { redirect_to @security_group, notice: 'Security group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @security_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_groups/1
  # DELETE /security_groups/1.json
  def destroy
    @security_group = SecurityGroup.find(params[:id])
    @security_group.destroy

    respond_to do |format|
      format.html { redirect_to security_groups_url }
      format.json { head :no_content }
    end
  end
end
