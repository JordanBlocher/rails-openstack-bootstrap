class VolumeTypesController < ApplicationController
  # GET /volume_types
  # GET /volume_types.json
  def index
    @volume_types = VolumeType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @volume_types }
    end
  end

  # GET /volume_types/1
  # GET /volume_types/1.json
  def show
    @volume_type = VolumeType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @volume_type }
    end
  end

  # GET /volume_types/new
  # GET /volume_types/new.json
  def new
    @volume_type = VolumeType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @volume_type }
    end
  end

  # GET /volume_types/1/edit
  def edit
    @volume_type = VolumeType.find(params[:id])
  end

  # POST /volume_types
  # POST /volume_types.json
  def create
    @volume_type = VolumeType.new(params[:volume_type])

    respond_to do |format|
      if @volume_type.save
        format.html { redirect_to @volume_type, notice: 'Volume type was successfully created.' }
        format.json { render json: @volume_type, status: :created, location: @volume_type }
      else
        format.html { render action: "new" }
        format.json { render json: @volume_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /volume_types/1
  # PUT /volume_types/1.json
  def update
    @volume_type = VolumeType.find(params[:id])

    respond_to do |format|
      if @volume_type.update_attributes(params[:volume_type])
        format.html { redirect_to @volume_type, notice: 'Volume type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @volume_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volume_types/1
  # DELETE /volume_types/1.json
  def destroy
    @volume_type = VolumeType.find(params[:id])
    @volume_type.destroy

    respond_to do |format|
      format.html { redirect_to volume_types_url }
      format.json { head :no_content }
    end
  end
end
