class CanvasFinancieroCostosController < ApplicationController
  before_action :set_canvas_financiero_costo, only: [:show, :edit, :update, :destroy]

  def index
    @canvas_financiero_costos = CanvasFinancieroCosto.all
  end

  def show
  end

  def new
    @canvas_financiero_costo = CanvasFinancieroCosto.new
  end

  def edit
  end

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

  def destroy
    @canvas_financiero_costo.destroy
    respond_to do |format|
      format.html { redirect_to canvas_financiero_costos_url }
      format.json { head :no_content }
    end
  end

  private
  def set_canvas_financiero_costo
    @canvas_financiero_costo = CanvasFinancieroCosto.find(params[:id])
  end

  def canvas_financiero_costo_params
    params.require(:canvas_financiero_costo).permit(:personal, :alquiler, :costo_produccion, :costo_comercializacion)
  end
end
