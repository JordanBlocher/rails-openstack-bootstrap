class ImagePropertiesController < ApplicationController
  before_filter :authenticate_cloud_user!

  # GET /image_properties
  # GET /image_properties.json
  def index
    @image_properties = ImageProperty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @image_properties }
    end
  end

  # GET /image_properties/1
  # GET /image_properties/1.json
  def show
    @image_property = ImageProperty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image_property }
    end
  end

  # GET /image_properties/new
  # GET /image_properties/new.json
  def new
    @image_property = ImageProperty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image_property }
    end
  end

  # GET /image_properties/1/edit
  def edit
    @image_property = ImageProperty.find(params[:id])
  end

  # POST /image_properties
  # POST /image_properties.json
  def create
    @image_property = ImageProperty.new(params[:image_property])

    respond_to do |format|
      if @image_property.save
        format.html { redirect_to @image_property, notice: 'Image property was successfully created.' }
        format.json { render json: @image_property, status: :created, location: @image_property }
      else
        format.html { render action: "new" }
        format.json { render json: @image_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /image_properties/1
  # PUT /image_properties/1.json
  def update
    @image_property = ImageProperty.find(params[:id])

    respond_to do |format|
      if @image_property.update_attributes(params[:image_property])
        format.html { redirect_to @image_property, notice: 'Image property was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_properties/1
  # DELETE /image_properties/1.json
  def destroy
    @image_property = ImageProperty.find(params[:id])
    @image_property.destroy

    respond_to do |format|
      format.html { redirect_to image_properties_url }
      format.json { head :no_content }
    end
  end
end
