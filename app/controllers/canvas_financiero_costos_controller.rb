class CanvasFinancieroCostosController < ApplicationController
  before_action :set_canvas_financiero_costo, only: [:show, :edit, :update, :destroy]

  # GET /canvas_financiero_costos
  # GET /canvas_financiero_costos.json
  def index
    @canvas_financiero_costos = CanvasFinancieroCosto.all
  end

  # GET /canvas_financiero_costos/1
  # GET /canvas_financiero_costos/1.json
  def show
  end

  # GET /canvas_financiero_costos/new
  def new
    @canvas_financiero_costo = CanvasFinancieroCosto.new
  end

  # GET /canvas_financiero_costos/1/edit
  def edit
  end

  # POST /canvas_financiero_costos
  # POST /canvas_financiero_costos.json
  def create
    @canvas_financiero_costo = CanvasFinancieroCosto.new(canvas_financiero_costo_params)

    respond_to do |format|
      if @canvas_financiero_costo.save
        format.html { redirect_to "/dreams/#{last_dream.id}", notice: 'Canvas financiero costo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @canvas_financiero_costo }
      else
        format.html { render action: 'new' }
        format.json { render json: @canvas_financiero_costo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /canvas_financiero_costos/1
  # PATCH/PUT /canvas_financiero_costos/1.json
  def update
    respond_to do |format|
      if @canvas_financiero_costo.update(canvas_financiero_costo_params)
        format.html { redirect_to @canvas_financiero_costo, notice: 'Canvas financiero costo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @canvas_financiero_costo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canvas_financiero_costos/1
  # DELETE /canvas_financiero_costos/1.json
  def destroy
    @canvas_financiero_costo.destroy
    respond_to do |format|
      format.html { redirect_to canvas_financiero_costos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canvas_financiero_costo
      @canvas_financiero_costo = CanvasFinancieroCosto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def canvas_financiero_costo_params
      params.require(:canvas_financiero_costo).permit(:personal, :alquiler, :costo_produccion, :costo_comercializacion)
    end
end
