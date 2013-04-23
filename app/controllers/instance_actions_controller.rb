class InstanceActionsController < ApplicationController
  # GET /instance_actions
  # GET /instance_actions.json
  def index
    @instance_actions = InstanceAction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instance_actions }
    end
  end

  # GET /instance_actions/1
  # GET /instance_actions/1.json
  def show
    @instance_action = InstanceAction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instance_action }
    end
  end

  # GET /instance_actions/new
  # GET /instance_actions/new.json
  def new
    @instance_action = InstanceAction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instance_action }
    end
  end

  # GET /instance_actions/1/edit
  def edit
    @instance_action = InstanceAction.find(params[:id])
  end

  # POST /instance_actions
  # POST /instance_actions.json
  def create
    @instance_action = InstanceAction.new(params[:instance_action])

    respond_to do |format|
      if @instance_action.save
        format.html { redirect_to @instance_action, notice: 'Instance action was successfully created.' }
        format.json { render json: @instance_action, status: :created, location: @instance_action }
      else
        format.html { render action: "new" }
        format.json { render json: @instance_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instance_actions/1
  # PUT /instance_actions/1.json
  def update
    @instance_action = InstanceAction.find(params[:id])

    respond_to do |format|
      if @instance_action.update_attributes(params[:instance_action])
        format.html { redirect_to @instance_action, notice: 'Instance action was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instance_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instance_actions/1
  # DELETE /instance_actions/1.json
  def destroy
    @instance_action = InstanceAction.find(params[:id])
    @instance_action.destroy

    respond_to do |format|
      format.html { redirect_to instance_actions_url }
      format.json { head :no_content }
    end
  end
end
