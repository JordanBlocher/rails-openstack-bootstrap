class SmFlavorsController < ApplicationController
  # GET /sm_flavors
  # GET /sm_flavors.json
  def index
    @sm_flavors = SmFlavor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sm_flavors }
    end
  end

  # GET /sm_flavors/1
  # GET /sm_flavors/1.json
  def show
    @sm_flavor = SmFlavor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sm_flavor }
    end
  end

  # GET /sm_flavors/new
  # GET /sm_flavors/new.json
  def new
    @sm_flavor = SmFlavor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sm_flavor }
    end
  end

  # GET /sm_flavors/1/edit
  def edit
    @sm_flavor = SmFlavor.find(params[:id])
  end

  # POST /sm_flavors
  # POST /sm_flavors.json
  def create
    @sm_flavor = SmFlavor.new(params[:sm_flavor])

    respond_to do |format|
      if @sm_flavor.save
        format.html { redirect_to @sm_flavor, notice: 'Sm flavor was successfully created.' }
        format.json { render json: @sm_flavor, status: :created, location: @sm_flavor }
      else
        format.html { render action: "new" }
        format.json { render json: @sm_flavor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sm_flavors/1
  # PUT /sm_flavors/1.json
  def update
    @sm_flavor = SmFlavor.find(params[:id])

    respond_to do |format|
      if @sm_flavor.update_attributes(params[:sm_flavor])
        format.html { redirect_to @sm_flavor, notice: 'Sm flavor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sm_flavor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sm_flavors/1
  # DELETE /sm_flavors/1.json
  def destroy
    @sm_flavor = SmFlavor.find(params[:id])
    @sm_flavor.destroy

    respond_to do |format|
      format.html { redirect_to sm_flavors_url }
      format.json { head :no_content }
    end
  end
end
