class MateriasController < ApplicationController
  # GET /materias
  # GET /materias.json
  def index
    @materias = Materia.all

    render json: @materias
  end

  # GET /materias/1
  # GET /materias/1.json
  def show
    @materia = Materia.find(params[:id])

    render json: @materia
  end

  # POST /materias
  # POST /materias.json
  def create
    @materia = Materia.new(params[:materia])

    if @materia.save
      render json: @materia, status: :created, location: @materia
    else
      render json: @materia.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /materias/1
  # PATCH/PUT /materias/1.json
  def update
    @materia = Materia.find(params[:id])

    if @materia.update(params[:materia])
      head :no_content
    else
      render json: @materia.errors, status: :unprocessable_entity
    end
  end

  # DELETE /materias/1
  # DELETE /materias/1.json
  def destroy
    @materia = Materia.find(params[:id])
    @materia.destroy

    head :no_content
  end
end
