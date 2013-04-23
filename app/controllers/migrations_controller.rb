class MigrationsController < ApplicationController
  # GET /migrations
  # GET /migrations.json
  def index
    @migrations = Migration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @migrations }
    end
  end

  # GET /migrations/1
  # GET /migrations/1.json
  def show
    @migration = Migration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @migration }
    end
  end

  # GET /migrations/new
  # GET /migrations/new.json
  def new
    @migration = Migration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @migration }
    end
  end

  # GET /migrations/1/edit
  def edit
    @migration = Migration.find(params[:id])
  end

  # POST /migrations
  # POST /migrations.json
  def create
    @migration = Migration.new(params[:migration])

    respond_to do |format|
      if @migration.save
        format.html { redirect_to @migration, notice: 'Migration was successfully created.' }
        format.json { render json: @migration, status: :created, location: @migration }
      else
        format.html { render action: "new" }
        format.json { render json: @migration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /migrations/1
  # PUT /migrations/1.json
  def update
    @migration = Migration.find(params[:id])

    respond_to do |format|
      if @migration.update_attributes(params[:migration])
        format.html { redirect_to @migration, notice: 'Migration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @migration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /migrations/1
  # DELETE /migrations/1.json
  def destroy
    @migration = Migration.find(params[:id])
    @migration.destroy

    respond_to do |format|
      format.html { redirect_to migrations_url }
      format.json { head :no_content }
    end
  end
end
