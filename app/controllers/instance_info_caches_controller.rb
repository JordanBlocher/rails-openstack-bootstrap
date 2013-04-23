class InstanceInfoCachesController < ApplicationController
  # GET /instance_info_caches
  # GET /instance_info_caches.json
  def index
    @instance_info_caches = InstanceInfoCach.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instance_info_caches }
    end
  end

  # GET /instance_info_caches/1
  # GET /instance_info_caches/1.json
  def show
    @instance_info_cach = InstanceInfoCach.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instance_info_cach }
    end
  end

  # GET /instance_info_caches/new
  # GET /instance_info_caches/new.json
  def new
    @instance_info_cach = InstanceInfoCach.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instance_info_cach }
    end
  end

  # GET /instance_info_caches/1/edit
  def edit
    @instance_info_cach = InstanceInfoCach.find(params[:id])
  end

  # POST /instance_info_caches
  # POST /instance_info_caches.json
  def create
    @instance_info_cach = InstanceInfoCach.new(params[:instance_info_cach])

    respond_to do |format|
      if @instance_info_cach.save
        format.html { redirect_to @instance_info_cach, notice: 'Instance info cach was successfully created.' }
        format.json { render json: @instance_info_cach, status: :created, location: @instance_info_cach }
      else
        format.html { render action: "new" }
        format.json { render json: @instance_info_cach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instance_info_caches/1
  # PUT /instance_info_caches/1.json
  def update
    @instance_info_cach = InstanceInfoCach.find(params[:id])

    respond_to do |format|
      if @instance_info_cach.update_attributes(params[:instance_info_cach])
        format.html { redirect_to @instance_info_cach, notice: 'Instance info cach was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instance_info_cach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instance_info_caches/1
  # DELETE /instance_info_caches/1.json
  def destroy
    @instance_info_cach = InstanceInfoCach.find(params[:id])
    @instance_info_cach.destroy

    respond_to do |format|
      format.html { redirect_to instance_info_caches_url }
      format.json { head :no_content }
    end
  end
end
