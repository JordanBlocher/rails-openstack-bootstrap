class QuotaController < ApplicationController
  # GET /quota
  # GET /quota.json
  def index
    @quota = Quotum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quota }
    end
  end

  # GET /quota/1
  # GET /quota/1.json
  def show
    @quotum = Quotum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quotum }
    end
  end

  # GET /quota/new
  # GET /quota/new.json
  def new
    @quotum = Quotum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quotum }
    end
  end

  # GET /quota/1/edit
  def edit
    @quotum = Quotum.find(params[:id])
  end

  # POST /quota
  # POST /quota.json
  def create
    @quotum = Quotum.new(params[:quotum])

    respond_to do |format|
      if @quotum.save
        format.html { redirect_to @quotum, notice: 'Quotum was successfully created.' }
        format.json { render json: @quotum, status: :created, location: @quotum }
      else
        format.html { render action: "new" }
        format.json { render json: @quotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quota/1
  # PUT /quota/1.json
  def update
    @quotum = Quotum.find(params[:id])

    respond_to do |format|
      if @quotum.update_attributes(params[:quotum])
        format.html { redirect_to @quotum, notice: 'Quotum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quota/1
  # DELETE /quota/1.json
  def destroy
    @quotum = Quotum.find(params[:id])
    @quotum.destroy

    respond_to do |format|
      format.html { redirect_to quota_url }
      format.json { head :no_content }
    end
  end
end
