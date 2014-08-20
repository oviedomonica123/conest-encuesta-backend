class ConsultasController < ApplicationController
  # GET /consultas
  # GET /consultas.json
  def index
    @consultas = Consulta.all

    render json: @consultas
  end

  # GET /consultas/1
  # GET /consultas/1.json
  def show
    @consulta = Consulta.find(params[:id])

    render json: @consulta
  end

  # POST /consultas
  # POST /consultas.json
  def create
    @consulta = Consulta.new(params[:consulta])

    if @consulta.save
      render json: @consulta, status: :created, location: @consulta
    else
      render json: @consulta.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /consultas/1
  # PATCH/PUT /consultas/1.json
  def update
    @consulta = Consulta.find(params[:id])

    if @consulta.update(params[:consulta])
      head :no_content
    else
      render json: @consulta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /consultas/1
  # DELETE /consultas/1.json
  def destroy
    @consulta = Consulta.find(params[:id])
    @consulta.destroy

    head :no_content
  end
end
