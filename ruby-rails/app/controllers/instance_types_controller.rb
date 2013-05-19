class InstanceTypesController < ApplicationController
  before_filter :authenticate_cloud_user!
  
  # GET /instance_types
  # GET /instance_types.json
  def index
    @instance_types = InstanceType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instance_types }
    end
  end

  # GET /instance_types/1
  # GET /instance_types/1.json
  def show
    @instance_type = InstanceType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instance_type }
    end
  end

  # GET /instance_types/new
  # GET /instance_types/new.json
  def new
    @instance_type = InstanceType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instance_type }
    end
  end

  # GET /instance_types/1/edit
  def edit
    @instance_type = InstanceType.find(params[:id])
  end

  # POST /instance_types
  # POST /instance_types.json
  def create
    @instance_type = InstanceType.new(params[:instance_type])

    respond_to do |format|
      if @instance_type.save
        format.html { redirect_to @instance_type, notice: 'Instance type was successfully created.' }
        format.json { render json: @instance_type, status: :created, location: @instance_type }
      else
        format.html { render action: "new" }
        format.json { render json: @instance_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instance_types/1
  # PUT /instance_types/1.json
  def update
    @instance_type = InstanceType.find(params[:id])

    respond_to do |format|
      if @instance_type.update_attributes(params[:instance_type])
        format.html { redirect_to @instance_type, notice: 'Instance type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instance_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instance_types/1
  # DELETE /instance_types/1.json
  def destroy
    @instance_type = InstanceType.find(params[:id])
    @instance_type.destroy

    respond_to do |format|
      format.html { redirect_to instance_types_url }
      format.json { head :no_content }
    end
  end
end
