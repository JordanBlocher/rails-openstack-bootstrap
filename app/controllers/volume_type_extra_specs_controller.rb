class VolumeTypeExtraSpecsController < ApplicationController
  # GET /volume_type_extra_specs
  # GET /volume_type_extra_specs.json
  def index
    @volume_type_extra_specs = VolumeTypeExtraSpec.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @volume_type_extra_specs }
    end
  end

  # GET /volume_type_extra_specs/1
  # GET /volume_type_extra_specs/1.json
  def show
    @volume_type_extra_spec = VolumeTypeExtraSpec.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @volume_type_extra_spec }
    end
  end

  # GET /volume_type_extra_specs/new
  # GET /volume_type_extra_specs/new.json
  def new
    @volume_type_extra_spec = VolumeTypeExtraSpec.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @volume_type_extra_spec }
    end
  end

  # GET /volume_type_extra_specs/1/edit
  def edit
    @volume_type_extra_spec = VolumeTypeExtraSpec.find(params[:id])
  end

  # POST /volume_type_extra_specs
  # POST /volume_type_extra_specs.json
  def create
    @volume_type_extra_spec = VolumeTypeExtraSpec.new(params[:volume_type_extra_spec])

    respond_to do |format|
      if @volume_type_extra_spec.save
        format.html { redirect_to @volume_type_extra_spec, notice: 'Volume type extra spec was successfully created.' }
        format.json { render json: @volume_type_extra_spec, status: :created, location: @volume_type_extra_spec }
      else
        format.html { render action: "new" }
        format.json { render json: @volume_type_extra_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /volume_type_extra_specs/1
  # PUT /volume_type_extra_specs/1.json
  def update
    @volume_type_extra_spec = VolumeTypeExtraSpec.find(params[:id])

    respond_to do |format|
      if @volume_type_extra_spec.update_attributes(params[:volume_type_extra_spec])
        format.html { redirect_to @volume_type_extra_spec, notice: 'Volume type extra spec was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @volume_type_extra_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volume_type_extra_specs/1
  # DELETE /volume_type_extra_specs/1.json
  def destroy
    @volume_type_extra_spec = VolumeTypeExtraSpec.find(params[:id])
    @volume_type_extra_spec.destroy

    respond_to do |format|
      format.html { redirect_to volume_type_extra_specs_url }
      format.json { head :no_content }
    end
  end
end
