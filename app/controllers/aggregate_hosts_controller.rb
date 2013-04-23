class AggregateHostsController < ApplicationController
  # GET /aggregate_hosts
  # GET /aggregate_hosts.json
  def index
    @aggregate_hosts = AggregateHost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aggregate_hosts }
    end
  end

  # GET /aggregate_hosts/1
  # GET /aggregate_hosts/1.json
  def show
    @aggregate_host = AggregateHost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aggregate_host }
    end
  end

  # GET /aggregate_hosts/new
  # GET /aggregate_hosts/new.json
  def new
    @aggregate_host = AggregateHost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aggregate_host }
    end
  end

  # GET /aggregate_hosts/1/edit
  def edit
    @aggregate_host = AggregateHost.find(params[:id])
  end

  # POST /aggregate_hosts
  # POST /aggregate_hosts.json
  def create
    @aggregate_host = AggregateHost.new(params[:aggregate_host])

    respond_to do |format|
      if @aggregate_host.save
        format.html { redirect_to @aggregate_host, notice: 'Aggregate host was successfully created.' }
        format.json { render json: @aggregate_host, status: :created, location: @aggregate_host }
      else
        format.html { render action: "new" }
        format.json { render json: @aggregate_host.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aggregate_hosts/1
  # PUT /aggregate_hosts/1.json
  def update
    @aggregate_host = AggregateHost.find(params[:id])

    respond_to do |format|
      if @aggregate_host.update_attributes(params[:aggregate_host])
        format.html { redirect_to @aggregate_host, notice: 'Aggregate host was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aggregate_host.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aggregate_hosts/1
  # DELETE /aggregate_hosts/1.json
  def destroy
    @aggregate_host = AggregateHost.find(params[:id])
    @aggregate_host.destroy

    respond_to do |format|
      format.html { redirect_to aggregate_hosts_url }
      format.json { head :no_content }
    end
  end
end
