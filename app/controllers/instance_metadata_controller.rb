class InstanceMetadataController < ApplicationController
  # GET /instance_metadata
  # GET /instance_metadata.json
  def index
    @instance_metadata = InstanceMetadatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instance_metadata }
    end
  end

  # GET /instance_metadata/1
  # GET /instance_metadata/1.json
  def show
    @instance_metadatum = InstanceMetadatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instance_metadatum }
    end
  end

  # GET /instance_metadata/new
  # GET /instance_metadata/new.json
  def new
    @instance_metadatum = InstanceMetadatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instance_metadatum }
    end
  end

  # GET /instance_metadata/1/edit
  def edit
    @instance_metadatum = InstanceMetadatum.find(params[:id])
  end

  # POST /instance_metadata
  # POST /instance_metadata.json
  def create
    @instance_metadatum = InstanceMetadatum.new(params[:instance_metadatum])

    respond_to do |format|
      if @instance_metadatum.save
        format.html { redirect_to @instance_metadatum, notice: 'Instance metadatum was successfully created.' }
        format.json { render json: @instance_metadatum, status: :created, location: @instance_metadatum }
      else
        format.html { render action: "new" }
        format.json { render json: @instance_metadatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instance_metadata/1
  # PUT /instance_metadata/1.json
  def update
    @instance_metadatum = InstanceMetadatum.find(params[:id])

    respond_to do |format|
      if @instance_metadatum.update_attributes(params[:instance_metadatum])
        format.html { redirect_to @instance_metadatum, notice: 'Instance metadatum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instance_metadatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instance_metadata/1
  # DELETE /instance_metadata/1.json
  def destroy
    @instance_metadatum = InstanceMetadatum.find(params[:id])
    @instance_metadatum.destroy

    respond_to do |format|
      format.html { redirect_to instance_metadata_url }
      format.json { head :no_content }
    end
  end
end
