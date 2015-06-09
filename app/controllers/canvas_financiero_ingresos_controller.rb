class CanvasFinancieroIngresosController < ApplicationController
  before_action :set_canvas_financiero_ingreso, only: [:show, :edit, :update, :destroy]

  # GET /canvas_financiero_ingresos
  # GET /canvas_financiero_ingresos.json
  def index
    @canvas_financiero_ingresos = CanvasFinancieroIngreso.all
  end

  # GET /canvas_financiero_ingresos/1
  # GET /canvas_financiero_ingresos/1.json
  def show
  end

  # GET /canvas_financiero_ingresos/new
  def new
    @canvas_financiero_ingreso = CanvasFinancieroIngreso.new
  end

  # GET /canvas_financiero_ingresos/1/edit
  def edit
  end

  # POST /canvas_financiero_ingresos
  # POST /canvas_financiero_ingresos.json
  def create
    @canvas_financiero_ingreso = CanvasFinancieroIngreso.new(canvas_financiero_ingreso_params)

    respond_to do |format|
      if @canvas_financiero_ingreso.save
        format.html { redirect_to "/dreams/#{last_dream.id}", notice: 'Canvas financiero ingreso was successfully created.' }
        format.json { render action: 'show', status: :created, location: @canvas_financiero_ingreso }
      else
        format.html { render action: 'new' }
        format.json { render json: @canvas_financiero_ingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /canvas_financiero_ingresos/1
  # PATCH/PUT /canvas_financiero_ingresos/1.json
  def update
    respond_to do |format|
      if @canvas_financiero_ingreso.update(canvas_financiero_ingreso_params)
        format.html { redirect_to @canvas_financiero_ingreso, notice: 'Canvas financiero ingreso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @canvas_financiero_ingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canvas_financiero_ingresos/1
  # DELETE /canvas_financiero_ingresos/1.json
  def destroy
    @canvas_financiero_ingreso.destroy
    respond_to do |format|
      format.html { redirect_to canvas_financiero_ingresos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canvas_financiero_ingreso
      @canvas_financiero_ingreso = CanvasFinancieroIngreso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def canvas_financiero_ingreso_params
      params.require(:canvas_financiero_ingreso).permit(:valor_venta_producto1, :valor_venta_producto2, :valor_venta_producto3)
    end
end
