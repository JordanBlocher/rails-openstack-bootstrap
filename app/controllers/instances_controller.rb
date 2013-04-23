class InstancesController < ApplicationController
  def index
    @instances = Instance.where("vm_state =?", "active")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instances }
    end
  end

def history
    @instances = Instance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instances }
    end
  end

  def show
    @instance = Instance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instance }
    end
  end

  def new
    @instance = Instance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instance }
    end
  end

  def edit
    @instance = Instance.find(params[:id])
  end

  def create
    @instance = Instance.new(params[:instance])

    respond_to do |format|
      if @instance.save
        format.html { redirect_to @instance, notice: 'Instance was successfully created.' }
        format.json { render json: @instance, status: :created, location: @instance }
      else
        format.html { render action: "new" }
        format.json { render json: @instance.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @instance = Instance.find(params[:id])

    respond_to do |format|
      if @instance.update_attributes(params[:instance])
        format.html { redirect_to @instance, notice: 'Instance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instance.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @instance = Instance.find(params[:id])
    @instance.destroy

    respond_to do |format|
      format.html { redirect_to instances_url }
      format.json { head :no_content }
    end
  end
end
