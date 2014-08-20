class OpcionesController < ApplicationController
  # GET /opciones
  # GET /opciones.json
  def index
    @opciones = Opcion.all

    render json: @opciones
  end

  # GET /opciones/1
  # GET /opciones/1.json
  def show
    @opcion = Opcion.find(params[:id])

    render json: @opcion
  end

  # POST /opciones
  # POST /opciones.json
  def create
    @opcion = Opcion.new(params[:opcion])

    if @opcion.save
      render json: @opcion, status: :created, location: @opcion
    else
      render json: @opcion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /opciones/1
  # PATCH/PUT /opciones/1.json
  def update
    @opcion = Opcion.find(params[:id])

    if @opcion.update(params[:opcion])
      head :no_content
    else
      render json: @opcion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /opciones/1
  # DELETE /opciones/1.json
  def destroy
    @opcion = Opcion.find(params[:id])
    @opcion.destroy

    head :no_content
  end
end
