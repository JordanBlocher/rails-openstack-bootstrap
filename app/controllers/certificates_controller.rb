class CertificatesController < ApplicationController
  # GET /certificates
  # GET /certificates.json
  def index
    @certificates = Certificate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @certificates }
    end
  end

  # GET /certificates/1
  # GET /certificates/1.json
  def show
    @certificate = Certificate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @certificate }
    end
  end

  # GET /certificates/new
  # GET /certificates/new.json
  def new
    @certificate = Certificate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @certificate }
    end
  end

  # GET /certificates/1/edit
  def edit
    @certificate = Certificate.find(params[:id])
  end

  # POST /certificates
  # POST /certificates.json
  def create
    @certificate = Certificate.new(params[:certificate])

    respond_to do |format|
      if @certificate.save
        format.html { redirect_to @certificate, notice: 'Certificate was successfully created.' }
        format.json { render json: @certificate, status: :created, location: @certificate }
      else
        format.html { render action: "new" }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /certificates/1
  # PUT /certificates/1.json
  def update
    @certificate = Certificate.find(params[:id])

    respond_to do |format|
      if @certificate.update_attributes(params[:certificate])
        format.html { redirect_to @certificate, notice: 'Certificate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certificates/1
  # DELETE /certificates/1.json
  def destroy
    @certificate = Certificate.find(params[:id])
    @certificate.destroy

    respond_to do |format|
      format.html { redirect_to certificates_url }
      format.json { head :no_content }
    end
  end
end
