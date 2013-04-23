class DnsDomainsController < ApplicationController
  # GET /dns_domains
  # GET /dns_domains.json
  def index
    @dns_domains = DnsDomain.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dns_domains }
    end
  end

  # GET /dns_domains/1
  # GET /dns_domains/1.json
  def show
    @dns_domain = DnsDomain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dns_domain }
    end
  end

  # GET /dns_domains/new
  # GET /dns_domains/new.json
  def new
    @dns_domain = DnsDomain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dns_domain }
    end
  end

  # GET /dns_domains/1/edit
  def edit
    @dns_domain = DnsDomain.find(params[:id])
  end

  # POST /dns_domains
  # POST /dns_domains.json
  def create
    @dns_domain = DnsDomain.new(params[:dns_domain])

    respond_to do |format|
      if @dns_domain.save
        format.html { redirect_to @dns_domain, notice: 'Dns domain was successfully created.' }
        format.json { render json: @dns_domain, status: :created, location: @dns_domain }
      else
        format.html { render action: "new" }
        format.json { render json: @dns_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dns_domains/1
  # PUT /dns_domains/1.json
  def update
    @dns_domain = DnsDomain.find(params[:id])

    respond_to do |format|
      if @dns_domain.update_attributes(params[:dns_domain])
        format.html { redirect_to @dns_domain, notice: 'Dns domain was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dns_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dns_domains/1
  # DELETE /dns_domains/1.json
  def destroy
    @dns_domain = DnsDomain.find(params[:id])
    @dns_domain.destroy

    respond_to do |format|
      format.html { redirect_to dns_domains_url }
      format.json { head :no_content }
    end
  end
end
