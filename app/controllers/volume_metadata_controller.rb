class VolumeMetadataController < ApplicationController
  # GET /volume_metadata
  # GET /volume_metadata.json
  def index
    @volume_metadata = VolumeMetadatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @volume_metadata }
    end
  end

  # GET /volume_metadata/1
  # GET /volume_metadata/1.json
  def show
    @volume_metadatum = VolumeMetadatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @volume_metadatum }
    end
  end

  # GET /volume_metadata/new
  # GET /volume_metadata/new.json
  def new
    @volume_metadatum = VolumeMetadatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @volume_metadatum }
    end
  end

  # GET /volume_metadata/1/edit
  def edit
    @volume_metadatum = VolumeMetadatum.find(params[:id])
  end

  # POST /volume_metadata
  # POST /volume_metadata.json
  def create
    @volume_metadatum = VolumeMetadatum.new(params[:volume_metadatum])

    respond_to do |format|
      if @volume_metadatum.save
        format.html { redirect_to @volume_metadatum, notice: 'Volume metadatum was successfully created.' }
        format.json { render json: @volume_metadatum, status: :created, location: @volume_metadatum }
      else
        format.html { render action: "new" }
        format.json { render json: @volume_metadatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /volume_metadata/1
  # PUT /volume_metadata/1.json
  def update
    @volume_metadatum = VolumeMetadatum.find(params[:id])

    respond_to do |format|
      if @volume_metadatum.update_attributes(params[:volume_metadatum])
        format.html { redirect_to @volume_metadatum, notice: 'Volume metadatum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @volume_metadatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volume_metadata/1
  # DELETE /volume_metadata/1.json
  def destroy
    @volume_metadatum = VolumeMetadatum.find(params[:id])
    @volume_metadatum.destroy

    respond_to do |format|
      format.html { redirect_to volume_metadata_url }
      format.json { head :no_content }
    end
  end
end
