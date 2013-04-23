class VirtualStorageArraysController < ApplicationController
  # GET /virtual_storage_arrays
  # GET /virtual_storage_arrays.json
  def index
    @virtual_storage_arrays = VirtualStorageArray.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @virtual_storage_arrays }
    end
  end

  # GET /virtual_storage_arrays/1
  # GET /virtual_storage_arrays/1.json
  def show
    @virtual_storage_array = VirtualStorageArray.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @virtual_storage_array }
    end
  end

  # GET /virtual_storage_arrays/new
  # GET /virtual_storage_arrays/new.json
  def new
    @virtual_storage_array = VirtualStorageArray.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @virtual_storage_array }
    end
  end

  # GET /virtual_storage_arrays/1/edit
  def edit
    @virtual_storage_array = VirtualStorageArray.find(params[:id])
  end

  # POST /virtual_storage_arrays
  # POST /virtual_storage_arrays.json
  def create
    @virtual_storage_array = VirtualStorageArray.new(params[:virtual_storage_array])

    respond_to do |format|
      if @virtual_storage_array.save
        format.html { redirect_to @virtual_storage_array, notice: 'Virtual storage array was successfully created.' }
        format.json { render json: @virtual_storage_array, status: :created, location: @virtual_storage_array }
      else
        format.html { render action: "new" }
        format.json { render json: @virtual_storage_array.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /virtual_storage_arrays/1
  # PUT /virtual_storage_arrays/1.json
  def update
    @virtual_storage_array = VirtualStorageArray.find(params[:id])

    respond_to do |format|
      if @virtual_storage_array.update_attributes(params[:virtual_storage_array])
        format.html { redirect_to @virtual_storage_array, notice: 'Virtual storage array was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @virtual_storage_array.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /virtual_storage_arrays/1
  # DELETE /virtual_storage_arrays/1.json
  def destroy
    @virtual_storage_array = VirtualStorageArray.find(params[:id])
    @virtual_storage_array.destroy

    respond_to do |format|
      format.html { redirect_to virtual_storage_arrays_url }
      format.json { head :no_content }
    end
  end
end
