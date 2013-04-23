class SecurityGroupRulesController < ApplicationController
  # GET /security_group_rules
  # GET /security_group_rules.json
  def index
    @security_group_rules = SecurityGroupRule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @security_group_rules }
    end
  end

  # GET /security_group_rules/1
  # GET /security_group_rules/1.json
  def show
    @security_group_rule = SecurityGroupRule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @security_group_rule }
    end
  end

  # GET /security_group_rules/new
  # GET /security_group_rules/new.json
  def new
    @security_group_rule = SecurityGroupRule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @security_group_rule }
    end
  end

  # GET /security_group_rules/1/edit
  def edit
    @security_group_rule = SecurityGroupRule.find(params[:id])
  end

  # POST /security_group_rules
  # POST /security_group_rules.json
  def create
    @security_group_rule = SecurityGroupRule.new(params[:security_group_rule])

    respond_to do |format|
      if @security_group_rule.save
        format.html { redirect_to @security_group_rule, notice: 'Security group rule was successfully created.' }
        format.json { render json: @security_group_rule, status: :created, location: @security_group_rule }
      else
        format.html { render action: "new" }
        format.json { render json: @security_group_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /security_group_rules/1
  # PUT /security_group_rules/1.json
  def update
    @security_group_rule = SecurityGroupRule.find(params[:id])

    respond_to do |format|
      if @security_group_rule.update_attributes(params[:security_group_rule])
        format.html { redirect_to @security_group_rule, notice: 'Security group rule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @security_group_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_group_rules/1
  # DELETE /security_group_rules/1.json
  def destroy
    @security_group_rule = SecurityGroupRule.find(params[:id])
    @security_group_rule.destroy

    respond_to do |format|
      format.html { redirect_to security_group_rules_url }
      format.json { head :no_content }
    end
  end
end
