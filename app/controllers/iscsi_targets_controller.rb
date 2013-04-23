class IscsiTargetsController < ApplicationController
  # GET /iscsi_targets
  # GET /iscsi_targets.json
  def index
    @iscsi_targets = IscsiTarget.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @iscsi_targets }
    end
  end

  # GET /iscsi_targets/1
  # GET /iscsi_targets/1.json
  def show
    @iscsi_target = IscsiTarget.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @iscsi_target }
    end
  end

  # GET /iscsi_targets/new
  # GET /iscsi_targets/new.json
  def new
    @iscsi_target = IscsiTarget.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @iscsi_target }
    end
  end

  # GET /iscsi_targets/1/edit
  def edit
    @iscsi_target = IscsiTarget.find(params[:id])
  end

  # POST /iscsi_targets
  # POST /iscsi_targets.json
  def create
    @iscsi_target = IscsiTarget.new(params[:iscsi_target])

    respond_to do |format|
      if @iscsi_target.save
        format.html { redirect_to @iscsi_target, notice: 'Iscsi target was successfully created.' }
        format.json { render json: @iscsi_target, status: :created, location: @iscsi_target }
      else
        format.html { render action: "new" }
        format.json { render json: @iscsi_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /iscsi_targets/1
  # PUT /iscsi_targets/1.json
  def update
    @iscsi_target = IscsiTarget.find(params[:id])

    respond_to do |format|
      if @iscsi_target.update_attributes(params[:iscsi_target])
        format.html { redirect_to @iscsi_target, notice: 'Iscsi target was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @iscsi_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iscsi_targets/1
  # DELETE /iscsi_targets/1.json
  def destroy
    @iscsi_target = IscsiTarget.find(params[:id])
    @iscsi_target.destroy

    respond_to do |format|
      format.html { redirect_to iscsi_targets_url }
      format.json { head :no_content }
    end
  end
end
