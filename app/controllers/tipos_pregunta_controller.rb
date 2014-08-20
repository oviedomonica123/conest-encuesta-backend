class TiposPreguntaController < ApplicationController
  # GET /tipos_pregunta
  # GET /tipos_pregunta.json
  def index
    @tipos_pregunta = TipoPregunta.all

    render json: @tipos_pregunta
  end

  # GET /tipos_pregunta/1
  # GET /tipos_pregunta/1.json
  def show
    @tipo_pregunta = TipoPregunta.find(params[:id])

    render json: @tipo_pregunta
  end

  # POST /tipos_pregunta
  # POST /tipos_pregunta.json
  def create
    @tipo_pregunta = TipoPregunta.new(params[:tipo_pregunta])

    if @tipo_pregunta.save
      render json: @tipo_pregunta, status: :created, location: @tipo_pregunta
    else
      render json: @tipo_pregunta.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipos_pregunta/1
  # PATCH/PUT /tipos_pregunta/1.json
  def update
    @tipo_pregunta = TipoPregunta.find(params[:id])

    if @tipo_pregunta.update(params[:tipo_pregunta])
      head :no_content
    else
      render json: @tipo_pregunta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipos_pregunta/1
  # DELETE /tipos_pregunta/1.json
  def destroy
    @tipo_pregunta = TipoPregunta.find(params[:id])
    @tipo_pregunta.destroy

    head :no_content
  end
end
