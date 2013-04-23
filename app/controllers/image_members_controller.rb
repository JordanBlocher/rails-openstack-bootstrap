class ImageMembersController < ApplicationController
  # GET /image_members
  # GET /image_members.json
  def index
    @image_members = ImageMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @image_members }
    end
  end

  # GET /image_members/1
  # GET /image_members/1.json
  def show
    @image_member = ImageMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image_member }
    end
  end

  # GET /image_members/new
  # GET /image_members/new.json
  def new
    @image_member = ImageMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image_member }
    end
  end

  # GET /image_members/1/edit
  def edit
    @image_member = ImageMember.find(params[:id])
  end

  # POST /image_members
  # POST /image_members.json
  def create
    @image_member = ImageMember.new(params[:image_member])

    respond_to do |format|
      if @image_member.save
        format.html { redirect_to @image_member, notice: 'Image member was successfully created.' }
        format.json { render json: @image_member, status: :created, location: @image_member }
      else
        format.html { render action: "new" }
        format.json { render json: @image_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /image_members/1
  # PUT /image_members/1.json
  def update
    @image_member = ImageMember.find(params[:id])

    respond_to do |format|
      if @image_member.update_attributes(params[:image_member])
        format.html { redirect_to @image_member, notice: 'Image member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_members/1
  # DELETE /image_members/1.json
  def destroy
    @image_member = ImageMember.find(params[:id])
    @image_member.destroy

    respond_to do |format|
      format.html { redirect_to image_members_url }
      format.json { head :no_content }
    end
  end
end
