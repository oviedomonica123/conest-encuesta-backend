class PreguntasController < ApplicationController
  # GET /preguntas
  # GET /preguntas.json
  def index
    @preguntas = Pregunta.all

    render json: @preguntas
  end

  # GET /preguntas/1
  # GET /preguntas/1.json
  def show
    @pregunta = Pregunta.find(params[:id])

    render json: @pregunta
  end

  # POST /preguntas
  # POST /preguntas.json
  def create
    @pregunta = Pregunta.new(params[:pregunta])

    if @pregunta.save
      render json: @pregunta, status: :created, location: @pregunta
    else
      render json: @pregunta.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /preguntas/1
  # PATCH/PUT /preguntas/1.json
  def update
    @pregunta = Pregunta.find(params[:id])

    if @pregunta.update(params[:pregunta])
      head :no_content
    else
      render json: @pregunta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /preguntas/1
  # DELETE /preguntas/1.json
  def destroy
    @pregunta = Pregunta.find(params[:id])
    @pregunta.destroy

    head :no_content
  end
end
