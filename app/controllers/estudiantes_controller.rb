class EstudiantesController < ApplicationController
  # GET /estudiantes
  # GET /estudiantes.json
  def index
    @estudiantes = Estudiante.all

    render json: @estudiantes
  end

  # GET /estudiantes/1
  # GET /estudiantes/1.json
  def show
    @estudiante = Estudiante.find(params[:id])

    render json: @estudiante
  end

  # POST /estudiantes
  # POST /estudiantes.json
  def create
    @estudiante = Estudiante.new(params[:estudiante])

    if @estudiante.save
      render json: @estudiante, status: :created, location: @estudiante
    else
      render json: @estudiante.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /estudiantes/1
  # PATCH/PUT /estudiantes/1.json
  def update
    @estudiante = Estudiante.find(params[:id])

    if @estudiante.update(params[:estudiante])
      head :no_content
    else
      render json: @estudiante.errors, status: :unprocessable_entity
    end
  end

  # DELETE /estudiantes/1
  # DELETE /estudiantes/1.json
  def destroy
    @estudiante = Estudiante.find(params[:id])
    @estudiante.destroy

    head :no_content
  end
end
