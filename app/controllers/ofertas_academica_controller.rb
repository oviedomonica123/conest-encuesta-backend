class OfertasAcademicaController < ApplicationController
  # GET /ofertas_academica
  # GET /ofertas_academica.json
  def index
    @ofertas_academica = OfertaAcademica.all

    render json: @ofertas_academica
  end

  # GET /ofertas_academica/1
  # GET /ofertas_academica/1.json
  def show
    @oferta_academica = OfertaAcademica.find(params[:id])

    render json: @oferta_academica
  end

  # POST /ofertas_academica
  # POST /ofertas_academica.json
  def create
    @oferta_academica = OfertaAcademica.new(params[:oferta_academica])

    if @oferta_academica.save
      render json: @oferta_academica, status: :created, location: @oferta_academica
    else
      render json: @oferta_academica.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ofertas_academica/1
  # PATCH/PUT /ofertas_academica/1.json
  def update
    @oferta_academica = OfertaAcademica.find(params[:id])

    if @oferta_academica.update(params[:oferta_academica])
      head :no_content
    else
      render json: @oferta_academica.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ofertas_academica/1
  # DELETE /ofertas_academica/1.json
  def destroy
    @oferta_academica = OfertaAcademica.find(params[:id])
    @oferta_academica.destroy

    head :no_content
  end
end
