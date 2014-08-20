class InstrumentosController < ApplicationController
  # GET /instrumentos
  # GET /instrumentos.json
  def index
    @instrumentos = Instrumento.all

    render json: @instrumentos
  end

  # GET /instrumentos/1
  # GET /instrumentos/1.json
  def show
    @instrumento = Instrumento.find(params[:id])

    render json: @instrumento
  end

  # POST /instrumentos
  # POST /instrumentos.json
  def create
    @instrumento = Instrumento.new(params[:instrumento])

    if @instrumento.save
      render json: @instrumento, status: :created, location: @instrumento
    else
      render json: @instrumento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /instrumentos/1
  # PATCH/PUT /instrumentos/1.json
  def update
    @instrumento = Instrumento.find(params[:id])

    if @instrumento.update(params[:instrumento])
      head :no_content
    else
      render json: @instrumento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /instrumentos/1
  # DELETE /instrumentos/1.json
  def destroy
    @instrumento = Instrumento.find(params[:id])
    @instrumento.destroy

    head :no_content
  end
end
