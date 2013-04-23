class AggregateMetadataController < ApplicationController
  # GET /aggregate_metadata
  # GET /aggregate_metadata.json
  def index
    @aggregate_metadata = AggregateMetadatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aggregate_metadata }
    end
  end

  # GET /aggregate_metadata/1
  # GET /aggregate_metadata/1.json
  def show
    @aggregate_metadatum = AggregateMetadatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aggregate_metadatum }
    end
  end

  # GET /aggregate_metadata/new
  # GET /aggregate_metadata/new.json
  def new
    @aggregate_metadatum = AggregateMetadatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aggregate_metadatum }
    end
  end

  # GET /aggregate_metadata/1/edit
  def edit
    @aggregate_metadatum = AggregateMetadatum.find(params[:id])
  end

  # POST /aggregate_metadata
  # POST /aggregate_metadata.json
  def create
    @aggregate_metadatum = AggregateMetadatum.new(params[:aggregate_metadatum])

    respond_to do |format|
      if @aggregate_metadatum.save
        format.html { redirect_to @aggregate_metadatum, notice: 'Aggregate metadatum was successfully created.' }
        format.json { render json: @aggregate_metadatum, status: :created, location: @aggregate_metadatum }
      else
        format.html { render action: "new" }
        format.json { render json: @aggregate_metadatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aggregate_metadata/1
  # PUT /aggregate_metadata/1.json
  def update
    @aggregate_metadatum = AggregateMetadatum.find(params[:id])

    respond_to do |format|
      if @aggregate_metadatum.update_attributes(params[:aggregate_metadatum])
        format.html { redirect_to @aggregate_metadatum, notice: 'Aggregate metadatum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aggregate_metadatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aggregate_metadata/1
  # DELETE /aggregate_metadata/1.json
  def destroy
    @aggregate_metadatum = AggregateMetadatum.find(params[:id])
    @aggregate_metadatum.destroy

    respond_to do |format|
      format.html { redirect_to aggregate_metadata_url }
      format.json { head :no_content }
    end
  end
end
