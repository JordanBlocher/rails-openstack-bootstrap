class AgentBuildsController < ApplicationController
  # GET /agent_builds
  # GET /agent_builds.json
  def index
    @agent_builds = AgentBuild.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agent_builds }
    end
  end

  # GET /agent_builds/1
  # GET /agent_builds/1.json
  def show
    @agent_build = AgentBuild.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agent_build }
    end
  end

  # GET /agent_builds/new
  # GET /agent_builds/new.json
  def new
    @agent_build = AgentBuild.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agent_build }
    end
  end

  # GET /agent_builds/1/edit
  def edit
    @agent_build = AgentBuild.find(params[:id])
  end

  # POST /agent_builds
  # POST /agent_builds.json
  def create
    @agent_build = AgentBuild.new(params[:agent_build])

    respond_to do |format|
      if @agent_build.save
        format.html { redirect_to @agent_build, notice: 'Agent build was successfully created.' }
        format.json { render json: @agent_build, status: :created, location: @agent_build }
      else
        format.html { render action: "new" }
        format.json { render json: @agent_build.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agent_builds/1
  # PUT /agent_builds/1.json
  def update
    @agent_build = AgentBuild.find(params[:id])

    respond_to do |format|
      if @agent_build.update_attributes(params[:agent_build])
        format.html { redirect_to @agent_build, notice: 'Agent build was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agent_build.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agent_builds/1
  # DELETE /agent_builds/1.json
  def destroy
    @agent_build = AgentBuild.find(params[:id])
    @agent_build.destroy

    respond_to do |format|
      format.html { redirect_to agent_builds_url }
      format.json { head :no_content }
    end
  end
end
