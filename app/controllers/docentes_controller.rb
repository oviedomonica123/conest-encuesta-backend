class DocentesController < ApplicationController
  # GET /docentes
  # GET /docentes.json
  def index
    @docentes = Docente.all

    render json: @docentes
  end

  # GET /docentes/1
  # GET /docentes/1.json
  def show
    @docente = Docente.find(params[:id])

    render json: @docente
  end

  # POST /docentes
  # POST /docentes.json
  def create
    @docente = Docente.new(params[:docente])

    if @docente.save
      render json: @docente, status: :created, location: @docente
    else
      render json: @docente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /docentes/1
  # PATCH/PUT /docentes/1.json
  def update
    @docente = Docente.find(params[:id])

    if @docente.update(params[:docente])
      head :no_content
    else
      render json: @docente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /docentes/1
  # DELETE /docentes/1.json
  def destroy
    @docente = Docente.find(params[:id])
    @docente.destroy

    head :no_content
  end
end
