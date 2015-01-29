class CanvasLadoIzquierdosController < ApplicationController
  before_action :set_canvas_lado_izquierdo, only: [:show, :edit, :update, :destroy]

  # GET /canvas_lado_izquierdos
  # GET /canvas_lado_izquierdos.json
  def index
    @canvas_lado_izquierdos = CanvasLadoIzquierdo.all
  end

  # GET /canvas_lado_izquierdos/1
  # GET /canvas_lado_izquierdos/1.json
  def show
  end

  # GET /canvas_lado_izquierdos/new
  def new
    @canvas_lado_izquierdo = CanvasLadoIzquierdo.new
  end

  # GET /canvas_lado_izquierdos/1/edit
  def edit
  end

  # POST /canvas_lado_izquierdos
  # POST /canvas_lado_izquierdos.json
  def create
    @canvas_lado_izquierdo = CanvasLadoIzquierdo.new(canvas_lado_izquierdo_params)

    respond_to do |format|
      if @canvas_lado_izquierdo.save
        format.html { redirect_to @canvas_lado_izquierdo, notice: 'Canvas lado izquierdo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @canvas_lado_izquierdo }
      else
        format.html { render action: 'new' }
        format.json { render json: @canvas_lado_izquierdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /canvas_lado_izquierdos/1
  # PATCH/PUT /canvas_lado_izquierdos/1.json
  def update
    respond_to do |format|
      if @canvas_lado_izquierdo.update(canvas_lado_izquierdo_params)
        format.html { redirect_to @canvas_lado_izquierdo, notice: 'Canvas lado izquierdo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @canvas_lado_izquierdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canvas_lado_izquierdos/1
  # DELETE /canvas_lado_izquierdos/1.json
  def destroy
    @canvas_lado_izquierdo.destroy
    respond_to do |format|
      format.html { redirect_to canvas_lado_izquierdos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canvas_lado_izquierdo
      @canvas_lado_izquierdo = CanvasLadoIzquierdo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def canvas_lado_izquierdo_params
      params.require(:canvas_lado_izquierdo).permit(:sector, :problema_general, :solucion, :producto1, :producto2, :producto3, :actividad_clave1, :actividad_clave2, :actividad_clave3, :recurso_clave1, :recurso_clave2, :recurso_clave3)
    end
end
