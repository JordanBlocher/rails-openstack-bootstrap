class InstanceFaultsController < ApplicationController
  # GET /instance_faults
  # GET /instance_faults.json
  def index
    @instance_faults = InstanceFault.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instance_faults }
    end
  end

  # GET /instance_faults/1
  # GET /instance_faults/1.json
  def show
    @instance_fault = InstanceFault.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instance_fault }
    end
  end

  # GET /instance_faults/new
  # GET /instance_faults/new.json
  def new
    @instance_fault = InstanceFault.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instance_fault }
    end
  end

  # GET /instance_faults/1/edit
  def edit
    @instance_fault = InstanceFault.find(params[:id])
  end

  # POST /instance_faults
  # POST /instance_faults.json
  def create
    @instance_fault = InstanceFault.new(params[:instance_fault])

    respond_to do |format|
      if @instance_fault.save
        format.html { redirect_to @instance_fault, notice: 'Instance fault was successfully created.' }
        format.json { render json: @instance_fault, status: :created, location: @instance_fault }
      else
        format.html { render action: "new" }
        format.json { render json: @instance_fault.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instance_faults/1
  # PUT /instance_faults/1.json
  def update
    @instance_fault = InstanceFault.find(params[:id])

    respond_to do |format|
      if @instance_fault.update_attributes(params[:instance_fault])
        format.html { redirect_to @instance_fault, notice: 'Instance fault was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instance_fault.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instance_faults/1
  # DELETE /instance_faults/1.json
  def destroy
    @instance_fault = InstanceFault.find(params[:id])
    @instance_fault.destroy

    respond_to do |format|
      format.html { redirect_to instance_faults_url }
      format.json { head :no_content }
    end
  end
end
