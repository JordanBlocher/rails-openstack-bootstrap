class SmBackendConfigsController < ApplicationController
  # GET /sm_backend_configs
  # GET /sm_backend_configs.json
  def index
    @sm_backend_configs = SmBackendConfig.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sm_backend_configs }
    end
  end

  # GET /sm_backend_configs/1
  # GET /sm_backend_configs/1.json
  def show
    @sm_backend_config = SmBackendConfig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sm_backend_config }
    end
  end

  # GET /sm_backend_configs/new
  # GET /sm_backend_configs/new.json
  def new
    @sm_backend_config = SmBackendConfig.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sm_backend_config }
    end
  end

  # GET /sm_backend_configs/1/edit
  def edit
    @sm_backend_config = SmBackendConfig.find(params[:id])
  end

  # POST /sm_backend_configs
  # POST /sm_backend_configs.json
  def create
    @sm_backend_config = SmBackendConfig.new(params[:sm_backend_config])

    respond_to do |format|
      if @sm_backend_config.save
        format.html { redirect_to @sm_backend_config, notice: 'Sm backend config was successfully created.' }
        format.json { render json: @sm_backend_config, status: :created, location: @sm_backend_config }
      else
        format.html { render action: "new" }
        format.json { render json: @sm_backend_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sm_backend_configs/1
  # PUT /sm_backend_configs/1.json
  def update
    @sm_backend_config = SmBackendConfig.find(params[:id])

    respond_to do |format|
      if @sm_backend_config.update_attributes(params[:sm_backend_config])
        format.html { redirect_to @sm_backend_config, notice: 'Sm backend config was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sm_backend_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sm_backend_configs/1
  # DELETE /sm_backend_configs/1.json
  def destroy
    @sm_backend_config = SmBackendConfig.find(params[:id])
    @sm_backend_config.destroy

    respond_to do |format|
      format.html { redirect_to sm_backend_configs_url }
      format.json { head :no_content }
    end
  end
end
