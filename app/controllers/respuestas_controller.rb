class RespuestasController < ApplicationController
  # GET /respuestas
  # GET /respuestas.json
  def index
    @respuestas = Respuesta.all

    render json: @respuestas
  end

  # GET /respuestas/1
  # GET /respuestas/1.json
  def show
    @respuesta = Respuesta.find(params[:id])

    render json: @respuesta
  end

  # POST /respuestas
  # POST /respuestas.json
  def create
    @respuesta = Respuesta.new(params[:respuesta])

    if @respuesta.save
      render json: @respuesta, status: :created, location: @respuesta
    else
      render json: @respuesta.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /respuestas/1
  # PATCH/PUT /respuestas/1.json
  def update
    @respuesta = Respuesta.find(params[:id])

    if @respuesta.update(params[:respuesta])
      head :no_content
    else
      render json: @respuesta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /respuestas/1
  # DELETE /respuestas/1.json
  def destroy
    @respuesta = Respuesta.find(params[:id])
    @respuesta.destroy

    head :no_content
  end
end
