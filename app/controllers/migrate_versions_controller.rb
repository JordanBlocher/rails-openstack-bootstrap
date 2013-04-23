class MigrateVersionsController < ApplicationController
  # GET /migrate_versions
  # GET /migrate_versions.json
  def index
    @migrate_versions = MigrateVersion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @migrate_versions }
    end
  end

  # GET /migrate_versions/1
  # GET /migrate_versions/1.json
  def show
    @migrate_version = MigrateVersion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @migrate_version }
    end
  end

  # GET /migrate_versions/new
  # GET /migrate_versions/new.json
  def new
    @migrate_version = MigrateVersion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @migrate_version }
    end
  end

  # GET /migrate_versions/1/edit
  def edit
    @migrate_version = MigrateVersion.find(params[:id])
  end

  # POST /migrate_versions
  # POST /migrate_versions.json
  def create
    @migrate_version = MigrateVersion.new(params[:migrate_version])

    respond_to do |format|
      if @migrate_version.save
        format.html { redirect_to @migrate_version, notice: 'Migrate version was successfully created.' }
        format.json { render json: @migrate_version, status: :created, location: @migrate_version }
      else
        format.html { render action: "new" }
        format.json { render json: @migrate_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /migrate_versions/1
  # PUT /migrate_versions/1.json
  def update
    @migrate_version = MigrateVersion.find(params[:id])

    respond_to do |format|
      if @migrate_version.update_attributes(params[:migrate_version])
        format.html { redirect_to @migrate_version, notice: 'Migrate version was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @migrate_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /migrate_versions/1
  # DELETE /migrate_versions/1.json
  def destroy
    @migrate_version = MigrateVersion.find(params[:id])
    @migrate_version.destroy

    respond_to do |format|
      format.html { redirect_to migrate_versions_url }
      format.json { head :no_content }
    end
  end
end
