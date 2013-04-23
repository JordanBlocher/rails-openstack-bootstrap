class ProviderFwRulesController < ApplicationController
  # GET /provider_fw_rules
  # GET /provider_fw_rules.json
  def index
    @provider_fw_rules = ProviderFwRule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @provider_fw_rules }
    end
  end

  # GET /provider_fw_rules/1
  # GET /provider_fw_rules/1.json
  def show
    @provider_fw_rule = ProviderFwRule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @provider_fw_rule }
    end
  end

  # GET /provider_fw_rules/new
  # GET /provider_fw_rules/new.json
  def new
    @provider_fw_rule = ProviderFwRule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @provider_fw_rule }
    end
  end

  # GET /provider_fw_rules/1/edit
  def edit
    @provider_fw_rule = ProviderFwRule.find(params[:id])
  end

  # POST /provider_fw_rules
  # POST /provider_fw_rules.json
  def create
    @provider_fw_rule = ProviderFwRule.new(params[:provider_fw_rule])

    respond_to do |format|
      if @provider_fw_rule.save
        format.html { redirect_to @provider_fw_rule, notice: 'Provider fw rule was successfully created.' }
        format.json { render json: @provider_fw_rule, status: :created, location: @provider_fw_rule }
      else
        format.html { render action: "new" }
        format.json { render json: @provider_fw_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /provider_fw_rules/1
  # PUT /provider_fw_rules/1.json
  def update
    @provider_fw_rule = ProviderFwRule.find(params[:id])

    respond_to do |format|
      if @provider_fw_rule.update_attributes(params[:provider_fw_rule])
        format.html { redirect_to @provider_fw_rule, notice: 'Provider fw rule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @provider_fw_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provider_fw_rules/1
  # DELETE /provider_fw_rules/1.json
  def destroy
    @provider_fw_rule = ProviderFwRule.find(params[:id])
    @provider_fw_rule.destroy

    respond_to do |format|
      format.html { redirect_to provider_fw_rules_url }
      format.json { head :no_content }
    end
  end
end
