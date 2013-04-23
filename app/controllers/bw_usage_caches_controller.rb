class BwUsageCachesController < ApplicationController
  # GET /bw_usage_caches
  # GET /bw_usage_caches.json
  def index
    @bw_usage_caches = BwUsageCache.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bw_usage_caches }
    end
  end

  # GET /bw_usage_caches/1
  # GET /bw_usage_caches/1.json
  def show
    @bw_usage_cach = BwUsageCache.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bw_usage_cach }
    end
  end

  # GET /bw_usage_caches/new
  # GET /bw_usage_caches/new.json
  def new
    @bw_usage_cach = BwUsageCache.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bw_usage_cach }
    end
  end

  # GET /bw_usage_caches/1/edit
  def edit
    @bw_usage_cach = BwUsageCache.find(params[:id])
  end

  # POST /bw_usage_caches
  # POST /bw_usage_caches.json
  def create
    @bw_usage_cach = BwUsageCache.new(params[:bw_usage_cach])

    respond_to do |format|
      if @bw_usage_cach.save
        format.html { redirect_to @bw_usage_cach, notice: 'Bw usage cache was successfully created.' }
        format.json { render json: @bw_usage_cach, status: :created, location: @bw_usage_cach }
      else
        format.html { render action: "new" }
        format.json { render json: @bw_usage_cach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bw_usage_caches/1
  # PUT /bw_usage_caches/1.json
  def update
    @bw_usage_cach = BwUsageCache.find(params[:id])

    respond_to do |format|
      if @bw_usage_cach.update_attributes(params[:bw_usage_cach])
        format.html { redirect_to @bw_usage_cach, notice: 'Bw usage cache was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bw_usage_cach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bw_usage_caches/1
  # DELETE /bw_usage_caches/1.json
  def destroy
    @bw_usage_cach = BwUsageCache.find(params[:id])
    @bw_usage_cach.destroy

    respond_to do |format|
      format.html { redirect_to bw_usage_caches_url }
      format.json { head :no_content }
    end
  end
end
