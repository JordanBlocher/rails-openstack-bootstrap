class S3ImagesController < ApplicationController
  before_filter :authenticate_cloud_user!

  # GET /s3_images
  # GET /s3_images.json
  def index
    @s3_images = S3Image.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @s3_images }
    end
  end

  # GET /s3_images/1
  # GET /s3_images/1.json
  def show
    @s3_image = S3Image.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @s3_image }
    end
  end

  # GET /s3_images/new
  # GET /s3_images/new.json
  def new
    @s3_image = S3Image.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @s3_image }
    end
  end

  # GET /s3_images/1/edit
  def edit
    @s3_image = S3Image.find(params[:id])
  end

  # POST /s3_images
  # POST /s3_images.json
  def create
    @s3_image = S3Image.new(params[:s3_image])

    respond_to do |format|
      if @s3_image.save
        format.html { redirect_to @s3_image, notice: 'S3 image was successfully created.' }
        format.json { render json: @s3_image, status: :created, location: @s3_image }
      else
        format.html { render action: "new" }
        format.json { render json: @s3_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /s3_images/1
  # PUT /s3_images/1.json
  def update
    @s3_image = S3Image.find(params[:id])

    respond_to do |format|
      if @s3_image.update_attributes(params[:s3_image])
        format.html { redirect_to @s3_image, notice: 'S3 image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @s3_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /s3_images/1
  # DELETE /s3_images/1.json
  def destroy
    @s3_image = S3Image.find(params[:id])
    @s3_image.destroy

    respond_to do |format|
      format.html { redirect_to s3_images_url }
      format.json { head :no_content }
    end
  end
end
