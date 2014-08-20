class BloquesController < ApplicationController
  # GET /bloques
  # GET /bloques.json
  def index
    @bloques = Bloque.all

    render json: @bloques
  end

  # GET /bloques/1
  # GET /bloques/1.json
  def show
    @bloque = Bloque.find(params[:id])

    render json: @bloque
  end

  # POST /bloques
  # POST /bloques.json
  def create
    @bloque = Bloque.new(params[:bloque])

    if @bloque.save
      render json: @bloque, status: :created, location: @bloque
    else
      render json: @bloque.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bloques/1
  # PATCH/PUT /bloques/1.json
  def update
    @bloque = Bloque.find(params[:id])

    if @bloque.update(params[:bloque])
      head :no_content
    else
      render json: @bloque.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bloques/1
  # DELETE /bloques/1.json
  def destroy
    @bloque = Bloque.find(params[:id])
    @bloque.destroy

    head :no_content
  end
end
