class ConsolesController < ApplicationController
  # GET /consoles
  # GET /consoles.json
  def index
    @consoles = Console.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @consoles }
    end
  end

  # GET /consoles/1
  # GET /consoles/1.json
  def show
    @console = Console.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @console }
    end
  end

  # GET /consoles/new
  # GET /consoles/new.json
  def new
    @console = Console.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @console }
    end
  end

  # GET /consoles/1/edit
  def edit
    @console = Console.find(params[:id])
  end

  # POST /consoles
  # POST /consoles.json
  def create
    @console = Console.new(params[:console])

    respond_to do |format|
      if @console.save
        format.html { redirect_to @console, notice: 'Console was successfully created.' }
        format.json { render json: @console, status: :created, location: @console }
      else
        format.html { render action: "new" }
        format.json { render json: @console.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /consoles/1
  # PUT /consoles/1.json
  def update
    @console = Console.find(params[:id])

    respond_to do |format|
      if @console.update_attributes(params[:console])
        format.html { redirect_to @console, notice: 'Console was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @console.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consoles/1
  # DELETE /consoles/1.json
  def destroy
    @console = Console.find(params[:id])
    @console.destroy

    respond_to do |format|
      format.html { redirect_to consoles_url }
      format.json { head :no_content }
    end
  end
end
