class InstanceTypeExtraSpecsController < ApplicationController
  # GET /instance_type_extra_specs
  # GET /instance_type_extra_specs.json
  def index
    @instance_type_extra_specs = InstanceTypeExtraSpec.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instance_type_extra_specs }
    end
  end

  # GET /instance_type_extra_specs/1
  # GET /instance_type_extra_specs/1.json
  def show
    @instance_type_extra_spec = InstanceTypeExtraSpec.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instance_type_extra_spec }
    end
  end

  # GET /instance_type_extra_specs/new
  # GET /instance_type_extra_specs/new.json
  def new
    @instance_type_extra_spec = InstanceTypeExtraSpec.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instance_type_extra_spec }
    end
  end

  # GET /instance_type_extra_specs/1/edit
  def edit
    @instance_type_extra_spec = InstanceTypeExtraSpec.find(params[:id])
  end

  # POST /instance_type_extra_specs
  # POST /instance_type_extra_specs.json
  def create
    @instance_type_extra_spec = InstanceTypeExtraSpec.new(params[:instance_type_extra_spec])

    respond_to do |format|
      if @instance_type_extra_spec.save
        format.html { redirect_to @instance_type_extra_spec, notice: 'Instance type extra spec was successfully created.' }
        format.json { render json: @instance_type_extra_spec, status: :created, location: @instance_type_extra_spec }
      else
        format.html { render action: "new" }
        format.json { render json: @instance_type_extra_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instance_type_extra_specs/1
  # PUT /instance_type_extra_specs/1.json
  def update
    @instance_type_extra_spec = InstanceTypeExtraSpec.find(params[:id])

    respond_to do |format|
      if @instance_type_extra_spec.update_attributes(params[:instance_type_extra_spec])
        format.html { redirect_to @instance_type_extra_spec, notice: 'Instance type extra spec was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instance_type_extra_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instance_type_extra_specs/1
  # DELETE /instance_type_extra_specs/1.json
  def destroy
    @instance_type_extra_spec = InstanceTypeExtraSpec.find(params[:id])
    @instance_type_extra_spec.destroy

    respond_to do |format|
      format.html { redirect_to instance_type_extra_specs_url }
      format.json { head :no_content }
    end
  end
end
