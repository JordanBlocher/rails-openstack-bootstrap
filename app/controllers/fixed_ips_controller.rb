class FixedIpsController < ApplicationController
  # GET /fixed_ips
  # GET /fixed_ips.json
  def index
    @fixed_ips = FixedIp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fixed_ips }
    end
  end

  # GET /fixed_ips/1
  # GET /fixed_ips/1.json
  def show
    @fixed_ip = FixedIp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fixed_ip }
    end
  end

  # GET /fixed_ips/new
  # GET /fixed_ips/new.json
  def new
    @fixed_ip = FixedIp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fixed_ip }
    end
  end

  # GET /fixed_ips/1/edit
  def edit
    @fixed_ip = FixedIp.find(params[:id])
  end

  # POST /fixed_ips
  # POST /fixed_ips.json
  def create
    @fixed_ip = FixedIp.new(params[:fixed_ip])

    respond_to do |format|
      if @fixed_ip.save
        format.html { redirect_to @fixed_ip, notice: 'Fixed ip was successfully created.' }
        format.json { render json: @fixed_ip, status: :created, location: @fixed_ip }
      else
        format.html { render action: "new" }
        format.json { render json: @fixed_ip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fixed_ips/1
  # PUT /fixed_ips/1.json
  def update
    @fixed_ip = FixedIp.find(params[:id])

    respond_to do |format|
      if @fixed_ip.update_attributes(params[:fixed_ip])
        format.html { redirect_to @fixed_ip, notice: 'Fixed ip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fixed_ip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixed_ips/1
  # DELETE /fixed_ips/1.json
  def destroy
    @fixed_ip = FixedIp.find(params[:id])
    @fixed_ip.destroy

    respond_to do |format|
      format.html { redirect_to fixed_ips_url }
      format.json { head :no_content }
    end
  end
end
