class ComputeNodesController < ApplicationController
  before_filter :authenticate_cloud_user!

  # GET /compute_nodes
  # GET /compute_nodes.json
  def index
    @compute_nodes = ComputeNode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @compute_nodes }
    end
  end

  # GET /compute_nodes/1
  # GET /compute_nodes/1.json
  def show
    @compute_node = ComputeNode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @compute_node }
    end
  end

  # GET /compute_nodes/new
  # GET /compute_nodes/new.json
  def new
    @compute_node = ComputeNode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @compute_node }
    end
  end

  # GET /compute_nodes/1/edit
  def edit
    @compute_node = ComputeNode.find(params[:id])
  end

  # POST /compute_nodes
  # POST /compute_nodes.json
  def create
    @compute_node = ComputeNode.new(params[:compute_node])

    respond_to do |format|
      if @compute_node.save
        format.html { redirect_to @compute_node, notice: 'Compute node was successfully created.' }
        format.json { render json: @compute_node, status: :created, location: @compute_node }
      else
        format.html { render action: "new" }
        format.json { render json: @compute_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compute_nodes/1
  # PUT /compute_nodes/1.json
  def update
    @compute_node = ComputeNode.find(params[:id])

    respond_to do |format|
      if @compute_node.update_attributes(params[:compute_node])
        format.html { redirect_to @compute_node, notice: 'Compute node was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @compute_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compute_nodes/1
  # DELETE /compute_nodes/1.json
  def destroy
    @compute_node = ComputeNode.find(params[:id])
    @compute_node.destroy

    respond_to do |format|
      format.html { redirect_to compute_nodes_url }
      format.json { head :no_content }
    end
  end
end
