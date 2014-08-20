class TokensController < ApplicationController
  # GET /tokens
  # GET /tokens.json
  def index
    @tokens = Token.all

    render json: @tokens
  end

  # GET /tokens/1
  # GET /tokens/1.json
  def show
    @token = Token.find(params[:id])

    render json: @token
  end

  # POST /tokens
  # POST /tokens.json
  def create
    @token = Token.new(params[:token])

    if @token.save
      render json: @token, status: :created, location: @token
    else
      render json: @token.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tokens/1
  # PATCH/PUT /tokens/1.json
  def update
    @token = Token.find(params[:id])

    if @token.update(params[:token])
      head :no_content
    else
      render json: @token.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tokens/1
  # DELETE /tokens/1.json
  def destroy
    @token = Token.find(params[:id])
    @token.destroy

    head :no_content
  end
end
