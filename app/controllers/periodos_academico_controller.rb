class PeriodosAcademicoController < ApplicationController
  # GET /periodos_academico
  # GET /periodos_academico.json
  def index
    @periodos_academico = PeriodoAcademico.all

    render json: @periodos_academico
  end

  # GET /periodos_academico/1
  # GET /periodos_academico/1.json
  def show
    @periodo_academico = PeriodoAcademico.find(params[:id])

    render json: @periodo_academico
  end

  # POST /periodos_academico
  # POST /periodos_academico.json
  def create
    @periodo_academico = PeriodoAcademico.new(params[:periodo_academico])

    if @periodo_academico.save
      render json: @periodo_academico, status: :created, location: @periodo_academico
    else
      render json: @periodo_academico.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /periodos_academico/1
  # PATCH/PUT /periodos_academico/1.json
  def update
    @periodo_academico = PeriodoAcademico.find(params[:id])

    if @periodo_academico.update(params[:periodo_academico])
      head :no_content
    else
      render json: @periodo_academico.errors, status: :unprocessable_entity
    end
  end

  # DELETE /periodos_academico/1
  # DELETE /periodos_academico/1.json
  def destroy
    @periodo_academico = PeriodoAcademico.find(params[:id])
    @periodo_academico.destroy

    head :no_content
  end
end
