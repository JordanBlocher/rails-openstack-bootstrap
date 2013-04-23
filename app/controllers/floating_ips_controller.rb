class FloatingIpsController < ApplicationController
  # GET /floating_ips
  # GET /floating_ips.json
  def index
    @floating_ips = FloatingIp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @floating_ips }
    end
  end

  # GET /floating_ips/1
  # GET /floating_ips/1.json
  def show
    @floating_ip = FloatingIp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @floating_ip }
    end
  end

  # GET /floating_ips/new
  # GET /floating_ips/new.json
  def new
    @floating_ip = FloatingIp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @floating_ip }
    end
  end

  # GET /floating_ips/1/edit
  def edit
    @floating_ip = FloatingIp.find(params[:id])
  end

  # POST /floating_ips
  # POST /floating_ips.json
  def create
    @floating_ip = FloatingIp.new(params[:floating_ip])

    respond_to do |format|
      if @floating_ip.save
        format.html { redirect_to @floating_ip, notice: 'Floating ip was successfully created.' }
        format.json { render json: @floating_ip, status: :created, location: @floating_ip }
      else
        format.html { render action: "new" }
        format.json { render json: @floating_ip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /floating_ips/1
  # PUT /floating_ips/1.json
  def update
    @floating_ip = FloatingIp.find(params[:id])

    respond_to do |format|
      if @floating_ip.update_attributes(params[:floating_ip])
        format.html { redirect_to @floating_ip, notice: 'Floating ip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @floating_ip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floating_ips/1
  # DELETE /floating_ips/1.json
  def destroy
    @floating_ip = FloatingIp.find(params[:id])
    @floating_ip.destroy

    respond_to do |format|
      format.html { redirect_to floating_ips_url }
      format.json { head :no_content }
    end
  end
end
