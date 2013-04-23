class BlockDeviceMappingsController < ApplicationController
  # GET /block_device_mappings
  # GET /block_device_mappings.json
  def index
    @block_device_mappings = BlockDeviceMapping.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @block_device_mappings }
    end
  end

  # GET /block_device_mappings/1
  # GET /block_device_mappings/1.json
  def show
    @block_device_mapping = BlockDeviceMapping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @block_device_mapping }
    end
  end

  # GET /block_device_mappings/new
  # GET /block_device_mappings/new.json
  def new
    @block_device_mapping = BlockDeviceMapping.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @block_device_mapping }
    end
  end

  # GET /block_device_mappings/1/edit
  def edit
    @block_device_mapping = BlockDeviceMapping.find(params[:id])
  end

  # POST /block_device_mappings
  # POST /block_device_mappings.json
  def create
    @block_device_mapping = BlockDeviceMapping.new(params[:block_device_mapping])

    respond_to do |format|
      if @block_device_mapping.save
        format.html { redirect_to @block_device_mapping, notice: 'Block device mapping was successfully created.' }
        format.json { render json: @block_device_mapping, status: :created, location: @block_device_mapping }
      else
        format.html { render action: "new" }
        format.json { render json: @block_device_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /block_device_mappings/1
  # PUT /block_device_mappings/1.json
  def update
    @block_device_mapping = BlockDeviceMapping.find(params[:id])

    respond_to do |format|
      if @block_device_mapping.update_attributes(params[:block_device_mapping])
        format.html { redirect_to @block_device_mapping, notice: 'Block device mapping was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @block_device_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /block_device_mappings/1
  # DELETE /block_device_mappings/1.json
  def destroy
    @block_device_mapping = BlockDeviceMapping.find(params[:id])
    @block_device_mapping.destroy

    respond_to do |format|
      format.html { redirect_to block_device_mappings_url }
      format.json { head :no_content }
    end
  end
end
