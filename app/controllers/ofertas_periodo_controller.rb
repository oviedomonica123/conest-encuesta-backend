class OfertasPeriodoController < ApplicationController
  # GET /ofertas_periodo
  # GET /ofertas_periodo.json
  def index
    @ofertas_periodo = OfertaPeriodo.all

    render json: @ofertas_periodo
  end

  # GET /ofertas_periodo/1
  # GET /ofertas_periodo/1.json
  def show
    @oferta_periodo = OfertaPeriodo.find(params[:id])

    render json: @oferta_periodo
  end

  # POST /ofertas_periodo
  # POST /ofertas_periodo.json
  def create
    @oferta_periodo = OfertaPeriodo.new(params[:oferta_periodo])

    if @oferta_periodo.save
      render json: @oferta_periodo, status: :created, location: @oferta_periodo
    else
      render json: @oferta_periodo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ofertas_periodo/1
  # PATCH/PUT /ofertas_periodo/1.json
  def update
    @oferta_periodo = OfertaPeriodo.find(params[:id])

    if @oferta_periodo.update(params[:oferta_periodo])
      head :no_content
    else
      render json: @oferta_periodo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ofertas_periodo/1
  # DELETE /ofertas_periodo/1.json
  def destroy
    @oferta_periodo = OfertaPeriodo.find(params[:id])
    @oferta_periodo.destroy

    head :no_content
  end
end
