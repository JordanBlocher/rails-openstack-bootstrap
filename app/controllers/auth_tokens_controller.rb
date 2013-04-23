class AuthTokensController < ApplicationController
  # GET /auth_tokens
  # GET /auth_tokens.json
  def index
    @auth_tokens = AuthToken.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @auth_tokens }
    end
  end

  # GET /auth_tokens/1
  # GET /auth_tokens/1.json
  def show
    @auth_token = AuthToken.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @auth_token }
    end
  end

  # GET /auth_tokens/new
  # GET /auth_tokens/new.json
  def new
    @auth_token = AuthToken.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @auth_token }
    end
  end

  # GET /auth_tokens/1/edit
  def edit
    @auth_token = AuthToken.find(params[:id])
  end

  # POST /auth_tokens
  # POST /auth_tokens.json
  def create
    @auth_token = AuthToken.new(params[:auth_token])

    respond_to do |format|
      if @auth_token.save
        format.html { redirect_to @auth_token, notice: 'Auth token was successfully created.' }
        format.json { render json: @auth_token, status: :created, location: @auth_token }
      else
        format.html { render action: "new" }
        format.json { render json: @auth_token.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /auth_tokens/1
  # PUT /auth_tokens/1.json
  def update
    @auth_token = AuthToken.find(params[:id])

    respond_to do |format|
      if @auth_token.update_attributes(params[:auth_token])
        format.html { redirect_to @auth_token, notice: 'Auth token was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @auth_token.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auth_tokens/1
  # DELETE /auth_tokens/1.json
  def destroy
    @auth_token = AuthToken.find(params[:id])
    @auth_token.destroy

    respond_to do |format|
      format.html { redirect_to auth_tokens_url }
      format.json { head :no_content }
    end
  end
end
