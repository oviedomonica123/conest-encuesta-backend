class CarrerasController < ApplicationController
  # GET /carreras
  # GET /carreras.json
  def index
    @carreras = Carrera.all

    render json: @carreras
  end

  # GET /carreras/1
  # GET /carreras/1.json
  def show
    @carrera = Carrera.find(params[:id])

    render json: @carrera
  end

  # POST /carreras
  # POST /carreras.json
  def create
    @carrera = Carrera.new(params[:carrera])

    if @carrera.save
      render json: @carrera, status: :created, location: @carrera
    else
      render json: @carrera.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carreras/1
  # PATCH/PUT /carreras/1.json
  def update
    @carrera = Carrera.find(params[:id])

    if @carrera.update(params[:carrera])
      head :no_content
    else
      render json: @carrera.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carreras/1
  # DELETE /carreras/1.json
  def destroy
    @carrera = Carrera.find(params[:id])
    @carrera.destroy

    head :no_content
  end
end
