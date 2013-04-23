class AggregatesController < ApplicationController
  # GET /aggregates
  # GET /aggregates.json
  def index
    @aggregates = Aggregate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aggregates }
    end
  end

  # GET /aggregates/1
  # GET /aggregates/1.json
  def show
    @aggregate = Aggregate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aggregate }
    end
  end

  # GET /aggregates/new
  # GET /aggregates/new.json
  def new
    @aggregate = Aggregate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aggregate }
    end
  end

  # GET /aggregates/1/edit
  def edit
    @aggregate = Aggregate.find(params[:id])
  end

  # POST /aggregates
  # POST /aggregates.json
  def create
    @aggregate = Aggregate.new(params[:aggregate])

    respond_to do |format|
      if @aggregate.save
        format.html { redirect_to @aggregate, notice: 'Aggregate was successfully created.' }
        format.json { render json: @aggregate, status: :created, location: @aggregate }
      else
        format.html { render action: "new" }
        format.json { render json: @aggregate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aggregates/1
  # PUT /aggregates/1.json
  def update
    @aggregate = Aggregate.find(params[:id])

    respond_to do |format|
      if @aggregate.update_attributes(params[:aggregate])
        format.html { redirect_to @aggregate, notice: 'Aggregate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aggregate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aggregates/1
  # DELETE /aggregates/1.json
  def destroy
    @aggregate = Aggregate.find(params[:id])
    @aggregate.destroy

    respond_to do |format|
      format.html { redirect_to aggregates_url }
      format.json { head :no_content }
    end
  end
end
