class ConsolePoolsController < ApplicationController
  # GET /console_pools
  # GET /console_pools.json
  def index
    @console_pools = ConsolePool.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @console_pools }
    end
  end

  # GET /console_pools/1
  # GET /console_pools/1.json
  def show
    @console_pool = ConsolePool.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @console_pool }
    end
  end

  # GET /console_pools/new
  # GET /console_pools/new.json
  def new
    @console_pool = ConsolePool.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @console_pool }
    end
  end

  # GET /console_pools/1/edit
  def edit
    @console_pool = ConsolePool.find(params[:id])
  end

  # POST /console_pools
  # POST /console_pools.json
  def create
    @console_pool = ConsolePool.new(params[:console_pool])

    respond_to do |format|
      if @console_pool.save
        format.html { redirect_to @console_pool, notice: 'Console pool was successfully created.' }
        format.json { render json: @console_pool, status: :created, location: @console_pool }
      else
        format.html { render action: "new" }
        format.json { render json: @console_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /console_pools/1
  # PUT /console_pools/1.json
  def update
    @console_pool = ConsolePool.find(params[:id])

    respond_to do |format|
      if @console_pool.update_attributes(params[:console_pool])
        format.html { redirect_to @console_pool, notice: 'Console pool was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @console_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /console_pools/1
  # DELETE /console_pools/1.json
  def destroy
    @console_pool = ConsolePool.find(params[:id])
    @console_pool.destroy

    respond_to do |format|
      format.html { redirect_to console_pools_url }
      format.json { head :no_content }
    end
  end
end
