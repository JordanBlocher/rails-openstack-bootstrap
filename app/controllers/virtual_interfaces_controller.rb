class VirtualInterfacesController < ApplicationController
  before_filter :authenticate_cloud_user!

  # GET /virtual_interfaces
  # GET /virtual_interfaces.json
  def index
    @virtual_interfaces = VirtualInterface.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @virtual_interfaces }
    end
  end

  # GET /virtual_interfaces/1
  # GET /virtual_interfaces/1.json
  def show
    @virtual_interface = VirtualInterface.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @virtual_interface }
    end
  end

  # GET /virtual_interfaces/new
  # GET /virtual_interfaces/new.json
  def new
    @virtual_interface = VirtualInterface.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @virtual_interface }
    end
  end

  # GET /virtual_interfaces/1/edit
  def edit
    @virtual_interface = VirtualInterface.find(params[:id])
  end

  # POST /virtual_interfaces
  # POST /virtual_interfaces.json
  def create
    @virtual_interface = VirtualInterface.new(params[:virtual_interface])

    respond_to do |format|
      if @virtual_interface.save
        format.html { redirect_to @virtual_interface, notice: 'Virtual interface was successfully created.' }
        format.json { render json: @virtual_interface, status: :created, location: @virtual_interface }
      else
        format.html { render action: "new" }
        format.json { render json: @virtual_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /virtual_interfaces/1
  # PUT /virtual_interfaces/1.json
  def update
    @virtual_interface = VirtualInterface.find(params[:id])

    respond_to do |format|
      if @virtual_interface.update_attributes(params[:virtual_interface])
        format.html { redirect_to @virtual_interface, notice: 'Virtual interface was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @virtual_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /virtual_interfaces/1
  # DELETE /virtual_interfaces/1.json
  def destroy
    @virtual_interface = VirtualInterface.find(params[:id])
    @virtual_interface.destroy

    respond_to do |format|
      format.html { redirect_to virtual_interfaces_url }
      format.json { head :no_content }
    end
  end
end
