class ControlesConsultasController < ApplicationController
  # GET /controles_consultas
  # GET /controles_consultas.json
  def index
    @controles_consultas = ControlConsultas.all

    render json: @controles_consultas
  end

  # GET /controles_consultas/1
  # GET /controles_consultas/1.json
  def show
    @control_consulta = ControlConsultas.find(params[:id])

    render json: @control_consulta
  end

  # POST /controles_consultas
  # POST /controles_consultas.json
  def create
    @control_consulta = ControlConsultas.new(params[:control_consulta])

    if @control_consulta.save
      render json: @control_consulta, status: :created, location: @control_consulta
    else
      render json: @control_consulta.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /controles_consultas/1
  # PATCH/PUT /controles_consultas/1.json
  def update
    @control_consulta = ControlConsultas.find(params[:id])

    if @control_consulta.update(params[:control_consulta])
      head :no_content
    else
      render json: @control_consulta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /controles_consultas/1
  # DELETE /controles_consultas/1.json
  def destroy
    @control_consulta = ControlConsultas.find(params[:id])
    @control_consulta.destroy

    head :no_content
  end
end
