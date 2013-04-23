class SmVolumesController < ApplicationController
  # GET /sm_volumes
  # GET /sm_volumes.json
  def index
    @sm_volumes = SmVolume.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sm_volumes }
    end
  end

  # GET /sm_volumes/1
  # GET /sm_volumes/1.json
  def show
    @sm_volume = SmVolume.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sm_volume }
    end
  end

  # GET /sm_volumes/new
  # GET /sm_volumes/new.json
  def new
    @sm_volume = SmVolume.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sm_volume }
    end
  end

  # GET /sm_volumes/1/edit
  def edit
    @sm_volume = SmVolume.find(params[:id])
  end

  # POST /sm_volumes
  # POST /sm_volumes.json
  def create
    @sm_volume = SmVolume.new(params[:sm_volume])

    respond_to do |format|
      if @sm_volume.save
        format.html { redirect_to @sm_volume, notice: 'Sm volume was successfully created.' }
        format.json { render json: @sm_volume, status: :created, location: @sm_volume }
      else
        format.html { render action: "new" }
        format.json { render json: @sm_volume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sm_volumes/1
  # PUT /sm_volumes/1.json
  def update
    @sm_volume = SmVolume.find(params[:id])

    respond_to do |format|
      if @sm_volume.update_attributes(params[:sm_volume])
        format.html { redirect_to @sm_volume, notice: 'Sm volume was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sm_volume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sm_volumes/1
  # DELETE /sm_volumes/1.json
  def destroy
    @sm_volume = SmVolume.find(params[:id])
    @sm_volume.destroy

    respond_to do |format|
      format.html { redirect_to sm_volumes_url }
      format.json { head :no_content }
    end
  end
end
